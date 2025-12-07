void proto::gpsd::LtlInfo::InitAsDefaultInstance(proto::gpsd::LtlInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v6 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v7 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  }

  *(this + 4) = v7;
  v8 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v8 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  }

  *(this + 5) = v8;
}

void proto::gpsd::LogEntry::InitAsDefaultInstance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::Request::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v6 = proto::gpsd::Response::default_instance_;
  }

  *(this + 4) = v6;
  v7 = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v7 = proto::gpsd::Indication::default_instance_;
  }

  *(this + 5) = v7;
}

BOOL proto::gpsd::Request_Type_IsValid(proto::gpsd *this)
{
  v1 = this;
  result = 1;
  if (v1 - 31 > 0x2D || ((1 << (v1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return v1 < 0x1E;
  }

  return result;
}

double proto::gpsd::Request::SharedCtor(proto::gpsd::Request *this)
{
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

uint64_t proto::gpsd::InjectAssistancePosition::default_instance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceTime::default_instance(proto::gpsd::InjectAssistanceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistancePressure::default_instance(proto::gpsd::SetAssistancePressure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistancePressure::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::default_instance(proto::gpsd::SetAssistanceAccel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::default_instance(proto::gpsd::SetAssistanceGyro *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::default_instance(proto::gpsd::SetAssistanceDem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceDem::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMapVector::default_instance(proto::gpsd::SetAssistanceMapVector *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::default_instance(proto::gpsd::SetAssistanceMotionActivityContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::default_instance(proto::gpsd::SetAssistanceMountState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::default_instance(proto::gpsd::SetAssistanceSignalEnvironment *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::default_instance(proto::gpsd::SetAssistanceSpeedConstraint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance(proto::gpsd::SetAssistanceAlongTrackVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceFile::default_instance(proto::gpsd::InjectAssistanceFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRtiFile::default_instance(proto::gpsd::InjectRtiFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRtiFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectSvidBlocklist::default_instance(proto::gpsd::InjectSvidBlocklist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::DeleteGnssData::default_instance(proto::gpsd::DeleteGnssData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::DeleteGnssData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetPvtmReport::default_instance(proto::gpsd::SetPvtmReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetPvtmReport::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetNmeaHandler::default_instance(proto::gpsd::SetNmeaHandler *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetNmeaHandler::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::default_instance(proto::gpsd::SetConfigSimulatorMode *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::default_instance(proto::gpsd::SetConfigEnableGnssConstellations *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigDutyCycling::default_instance(proto::gpsd::SetConfigDutyCycling *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::TerminationImminent::default_instance(proto::gpsd::TerminationImminent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::TerminationImminent::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::ExitMessage::default_instance(proto::gpsd::ExitMessage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::ExitMessage::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo::default_instance(proto::gpsd::LtlInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::StartContext::default_instance(proto::gpsd::StartContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::StartContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::default_instance(proto::gpsd::SetThermalRiskState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetThermalRiskState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::default_instance(proto::gpsd::SetConfigRfBandEnable *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::default_instance(proto::gpsd::InjectRavenOrbitFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  return result;
}

proto::gpsd::Request *proto::gpsd::Request::Request(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = v3;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  proto::gpsd::Request::MergeFrom(this, a2);
  return this;
}

void sub_245544D14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 44);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 41);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::MergeFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 84);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 82, *(this + 84) + v4);
    memcpy((*(this + 41) + 4 * *(this + 84)), *(a2 + 41), 4 * *(a2 + 84));
    *(this + 84) += *(a2 + 84);
  }

  v5 = *(a2 + 90);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 88, *(this + 90) + v5);
    memcpy((*(this + 44) + 4 * *(this + 90)), *(a2 + 44), 4 * *(a2 + 90));
    *(this + 90) += *(a2 + 90);
  }

  v6 = *(a2 + 99);
  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6)
  {
    v7 = *(a2 + 1);
    *(this + 99) |= 1u;
    *(this + 1) = v7;
    v6 = *(a2 + 99);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 4);
  *(this + 99) |= 2u;
  *(this + 4) = v8;
  v6 = *(a2 + 99);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 5);
  if (!proto::gpsd::Request_Type_IsValid(v9))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  *(this + 99) |= 4u;
  *(this + 5) = v9;
  v6 = *(a2 + 99);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(this + 99) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(v10, v11);
  v6 = *(a2 + 99);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    *(this + 99) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::Request::default_instance_ + 40);
    }

    proto::gpsd::SetAssistancePressure::MergeFrom(v14, v15);
    v6 = *(a2 + 99);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 99) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(v12, v13);
  v6 = *(a2 + 99);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_36:
  *(this + 99) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  proto::gpsd::SetAssistanceAccel::MergeFrom(v16, v17);
  v6 = *(a2 + 99);
  if ((v6 & 0x80) != 0)
  {
LABEL_41:
    *(this + 99) |= 0x80u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    proto::gpsd::SetAssistanceGyro::MergeFrom(v18, v19);
    v6 = *(a2 + 99);
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 99) |= 0x100u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      v21 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    proto::gpsd::SetAssistanceDem::MergeFrom(v20, v21);
    v6 = *(a2 + 99);
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 99) |= 0x200u;
  v22 = *(this + 9);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 9);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  proto::gpsd::SetAssistanceMapVector::MergeFrom(v22, v23);
  v6 = *(a2 + 99);
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 99) |= 0x400u;
  v24 = *(this + 10);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 10);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(v24, v25);
  v6 = *(a2 + 99);
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 99) |= 0x800u;
  v26 = *(this + 11);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 11);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  proto::gpsd::SetAssistanceMountState::MergeFrom(v26, v27);
  v6 = *(a2 + 99);
  if ((v6 & 0x1000) == 0)
  {
LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(this + 99) |= 0x1000u;
  v28 = *(this + 12);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 12);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(v28, v29);
  v6 = *(a2 + 99);
  if ((v6 & 0x2000) == 0)
  {
LABEL_53:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_81:
  *(this + 99) |= 0x2000u;
  v30 = *(this + 13);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 13);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(v30, v31);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000) == 0)
  {
LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_86:
  *(this + 99) |= 0x4000u;
  v32 = *(this + 14);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 14);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(v32, v33);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000) != 0)
  {
LABEL_91:
    *(this + 99) |= 0x8000u;
    v34 = *(this + 15);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 15);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    proto::gpsd::InjectAssistanceFile::MergeFrom(v34, v35);
    v6 = *(a2 + 99);
  }

LABEL_96:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(this + 99) |= 0x10000u;
    v36 = *(this + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *(a2 + 16);
    if (!v37)
    {
      v37 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    proto::gpsd::InjectRtiFile::MergeFrom(v36, v37);
    v6 = *(a2 + 99);
    if ((v6 & 0x20000) == 0)
    {
LABEL_99:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  *(this + 99) |= 0x20000u;
  v38 = *(this + 17);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 17);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(v38, v39);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000) == 0)
  {
LABEL_100:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(this + 99) |= 0x40000u;
  v40 = *(this + 18);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 18);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  proto::gpsd::DeleteGnssData::MergeFrom(v40, v41);
  v6 = *(a2 + 99);
  if ((v6 & 0x80000) == 0)
  {
LABEL_101:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_121:
  *(this + 99) |= 0x80000u;
  v42 = *(this + 19);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 19);
  if (!v43)
  {
    v43 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  proto::gpsd::SetPvtmReport::MergeFrom(v42, v43);
  v6 = *(a2 + 99);
  if ((v6 & 0x100000) == 0)
  {
LABEL_102:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_131;
  }

LABEL_126:
  *(this + 99) |= 0x100000u;
  v44 = *(this + 20);
  if (!v44)
  {
    operator new();
  }

  v45 = *(a2 + 20);
  if (!v45)
  {
    v45 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  proto::gpsd::SetNmeaHandler::MergeFrom(v44, v45);
  v6 = *(a2 + 99);
  if ((v6 & 0x200000) == 0)
  {
LABEL_103:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_136;
  }

LABEL_131:
  *(this + 99) |= 0x200000u;
  v46 = *(this + 21);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 21);
  if (!v47)
  {
    v47 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  proto::gpsd::SetConfigSimulatorMode::MergeFrom(v46, v47);
  v6 = *(a2 + 99);
  if ((v6 & 0x400000) == 0)
  {
LABEL_104:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

LABEL_136:
  *(this + 99) |= 0x400000u;
  v48 = *(this + 22);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 22);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(v48, v49);
  v6 = *(a2 + 99);
  if ((v6 & 0x800000) != 0)
  {
LABEL_141:
    *(this + 99) |= 0x800000u;
    v50 = *(this + 23);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 23);
    if (!v51)
    {
      v51 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    proto::gpsd::SetConfigDutyCycling::MergeFrom(v50, v51);
    v6 = *(a2 + 99);
  }

LABEL_146:
  if (!HIBYTE(v6))
  {
    goto LABEL_196;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(this + 99) |= 0x1000000u;
    v52 = *(this + 24);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 24);
    if (!v53)
    {
      v53 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    proto::gpsd::TerminationImminent::MergeFrom(v52, v53);
    v6 = *(a2 + 99);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_149:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_149;
  }

  *(this + 99) |= 0x2000000u;
  v54 = *(this + 25);
  if (!v54)
  {
    operator new();
  }

  v55 = *(a2 + 25);
  if (!v55)
  {
    v55 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  proto::gpsd::ExitMessage::MergeFrom(v54, v55);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_171;
  }

LABEL_166:
  *(this + 99) |= 0x4000000u;
  v56 = *(this + 26);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 26);
  if (!v57)
  {
    v57 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  proto::gpsd::LtlInfo::MergeFrom(v56, v57);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_176;
  }

LABEL_171:
  *(this + 99) |= 0x8000000u;
  v58 = *(this + 27);
  if (!v58)
  {
    operator new();
  }

  v59 = *(a2 + 27);
  if (!v59)
  {
    v59 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  proto::gpsd::StartContext::MergeFrom(v58, v59);
  v6 = *(a2 + 99);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_152:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_181;
  }

LABEL_176:
  *(this + 99) |= 0x10000000u;
  v60 = *(this + 28);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 28);
  if (!v61)
  {
    v61 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  proto::gpsd::SetThermalRiskState::MergeFrom(v60, v61);
  v6 = *(a2 + 99);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_153:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_181:
  *(this + 99) |= 0x20000000u;
  v62 = *(this + 29);
  if (!v62)
  {
    operator new();
  }

  v63 = *(a2 + 29);
  if (!v63)
  {
    v63 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  proto::gpsd::SetConfigRfBandEnable::MergeFrom(v62, v63);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_154:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_191;
  }

LABEL_186:
  *(this + 99) |= 0x40000000u;
  v64 = *(this + 30);
  if (!v64)
  {
    operator new();
  }

  v65 = *(a2 + 30);
  if (!v65)
  {
    v65 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(v64, v65);
  if ((*(a2 + 99) & 0x80000000) != 0)
  {
LABEL_191:
    *(this + 99) |= 0x80000000;
    v66 = *(this + 31);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 31);
    if (!v67)
    {
      v67 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    proto::gnss::Emergency::EmergConfig::MergeFrom(v66, v67);
  }

LABEL_196:
  v68 = *(a2 + 100);
  if (!v68)
  {
    goto LABEL_240;
  }

  if (v68)
  {
    v69 = *(a2 + 32);
    *(this + 100) |= 1u;
    v70 = *(this + 32);
    if (v70 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v70, v69);
    v68 = *(a2 + 100);
    if ((v68 & 2) == 0)
    {
LABEL_199:
      if ((v68 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_214;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_199;
  }

  *(this + 100) |= 2u;
  v71 = *(this + 33);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 33);
  if (!v72)
  {
    v72 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  proto::gnss::Emergency::PositionRequest::MergeFrom(v71, v72);
  v68 = *(a2 + 100);
  if ((v68 & 4) == 0)
  {
LABEL_200:
    if ((v68 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_215;
  }

LABEL_214:
  v73 = *(a2 + 76);
  *(this + 100) |= 4u;
  *(this + 76) = v73;
  v68 = *(a2 + 100);
  if ((v68 & 8) == 0)
  {
LABEL_201:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_215:
  *(this + 100) |= 8u;
  v74 = *(this + 34);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 34);
  if (!v75)
  {
    v75 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(v74, v75);
  v68 = *(a2 + 100);
  if ((v68 & 0x10) == 0)
  {
LABEL_202:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_220:
  *(this + 100) |= 0x10u;
  v76 = *(this + 35);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 35);
  if (!v77)
  {
    v77 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  proto::gnss::Emergency::ReferenceLocation::MergeFrom(v76, v77);
  v68 = *(a2 + 100);
  if ((v68 & 0x20) == 0)
  {
LABEL_203:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_230;
  }

LABEL_225:
  *(this + 100) |= 0x20u;
  v78 = *(this + 36);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 36);
  if (!v79)
  {
    v79 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(v78, v79);
  v68 = *(a2 + 100);
  if ((v68 & 0x40) == 0)
  {
LABEL_204:
    if ((v68 & 0x80) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_235;
  }

LABEL_230:
  *(this + 100) |= 0x40u;
  v80 = *(this + 37);
  if (!v80)
  {
    operator new();
  }

  v81 = *(a2 + 37);
  if (!v81)
  {
    v81 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(v80, v81);
  v68 = *(a2 + 100);
  if ((v68 & 0x80) != 0)
  {
LABEL_235:
    *(this + 100) |= 0x80u;
    v82 = *(this + 39);
    if (!v82)
    {
      operator new();
    }

    v83 = *(a2 + 39);
    if (!v83)
    {
      v83 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    proto::gnss::Emergency::CellFTAssistance::MergeFrom(v82, v83);
    v68 = *(a2 + 100);
  }

LABEL_240:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_247;
  }

  if ((v68 & 0x100) != 0)
  {
    *(this + 100) |= 0x100u;
    v84 = *(this + 40);
    if (!v84)
    {
      operator new();
    }

    v85 = *(a2 + 40);
    if (!v85)
    {
      v85 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    proto::gnss::Emergency::CplaneContext::MergeFrom(v84, v85);
    v68 = *(a2 + 100);
    if ((v68 & 0x400) == 0)
    {
LABEL_243:
      if ((v68 & 0x800) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_259;
    }
  }

  else if ((v68 & 0x400) == 0)
  {
    goto LABEL_243;
  }

  *(this + 100) |= 0x400u;
  v86 = *(this + 43);
  if (!v86)
  {
    operator new();
  }

  v87 = *(a2 + 43);
  if (!v87)
  {
    v87 = *(proto::gpsd::Request::default_instance_ + 344);
  }

  proto::gnss::Emergency::LocationId::MergeFrom(v86, v87);
  v68 = *(a2 + 100);
  if ((v68 & 0x800) == 0)
  {
LABEL_244:
    if ((v68 & 0x2000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_260;
  }

LABEL_259:
  v88 = *(a2 + 77);
  *(this + 100) |= 0x800u;
  *(this + 77) = v88;
  v68 = *(a2 + 100);
  if ((v68 & 0x2000) == 0)
  {
LABEL_245:
    if ((v68 & 0x4000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_261;
  }

LABEL_260:
  v89 = *(a2 + 368);
  *(this + 100) |= 0x2000u;
  *(this + 368) = v89;
  v68 = *(a2 + 100);
  if ((v68 & 0x4000) == 0)
  {
LABEL_246:
    if ((v68 & 0x8000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_262;
  }

LABEL_261:
  v90 = *(a2 + 93);
  *(this + 100) |= 0x4000u;
  *(this + 93) = v90;
  v68 = *(a2 + 100);
  if ((v68 & 0x8000) == 0)
  {
LABEL_247:
    if ((v68 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_267;
  }

LABEL_262:
  *(this + 100) |= 0x8000u;
  v91 = *(this + 47);
  if (!v91)
  {
    operator new();
  }

  v92 = *(a2 + 47);
  if (!v92)
  {
    v92 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  proto::gnss::Emergency::SuplContext::MergeFrom(v91, v92);
  if ((*(a2 + 100) & 0x10000) != 0)
  {
LABEL_267:
    *(this + 100) |= 0x10000u;
    v93 = *(this + 48);
    if (!v93)
    {
      operator new();
    }

    v94 = *(a2 + 48);
    if (!v94)
    {
      v94 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    proto::gnss::Emergency::WlanMeasurementList::MergeFrom(v93, v94);
  }
}

void sub_245546328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::~Request(proto::gpsd::Request *this)
{
  *this = &unk_285862088;
  proto::gpsd::Request::SharedDtor(this);
  v2 = *(this + 44);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 41);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::Request::~Request(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::Request::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[32];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::Request::default_instance_ != v1)
  {
    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    this = v1[48];
    if (this)
    {
      v42 = *(*this + 8);

      return v42();
    }
  }

  return this;
}

uint64_t proto::gpsd::Request::default_instance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Request::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Request::Clear(uint64_t this)
{
  v1 = this;
  v2 = (this + 396);
  v3 = *(this + 396);
  if (v3)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v3 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::InjectAssistancePosition::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v5 + 8);
        *(v5 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(v1 + 48);
      if (v6)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v6 + 8);
        *(v6 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v7 + 8);
        *(v7 + 36) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v8 = *(v1 + 64);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(v1 + 72);
      if (v9)
      {
        v10 = *(v9 + 76);
        if (v10)
        {
          *(v9 + 49) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 69) = 0;
          *(v9 + 65) = 0;
        }

        *(v9 + 76) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v11 = *(v1 + 80);
      if (v11)
      {
        if (*(v11 + 32))
        {
          *(v11 + 8) = 0;
          *(v11 + 16) = 0x400000000;
          *(v11 + 24) = 0;
        }

        *(v11 + 32) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = *(v1 + 88);
      if (v12)
      {
        if (*(v12 + 24))
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 4;
        }

        *(v12 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(v1 + 96);
      if (v13)
      {
        if (*(v13 + 16))
        {
          *(v13 + 8) = 15;
        }

        *(v13 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(v1 + 104);
      if (v14)
      {
        if (*(v14 + 44))
        {
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
        }

        *(v14 + 44) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v15 = *(v1 + 112);
      if (v15)
      {
        if (*(v15 + 36))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
        }

        *(v15 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = proto::gpsd::InjectAssistanceFile::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v16 = *(v1 + 128);
      if (v16)
      {
        if (*(v16 + 20))
        {
          v17 = *(v16 + 8);
          if (v17 != MEMORY[0x277D82C30])
          {
            if (*(v17 + 23) < 0)
            {
              **v17 = 0;
              *(v17 + 8) = 0;
            }

            else
            {
              *v17 = 0;
              *(v17 + 23) = 0;
            }
          }
        }

        *(v16 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v18 = *(v1 + 136);
      if (v18)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v18 + 8);
        *(v18 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(v1 + 144);
      if (v19)
      {
        if (*(v19 + 20))
        {
          *(v19 + 8) = 0;
        }

        *(v19 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v20 = *(v1 + 152);
      if (v20)
      {
        if (*(v20 + 20))
        {
          *(v20 + 8) = 1;
          *(v20 + 9) = 0;
          *(v20 + 13) = 0;
        }

        *(v20 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = *(v1 + 160);
      if (v21)
      {
        if (*(v21 + 20))
        {
          *(v21 + 8) = 0;
        }

        *(v21 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 = *(v1 + 168);
      if (v22)
      {
        if (*(v22 + 20))
        {
          *(v22 + 8) = 0;
          *(v22 + 12) = 0;
        }

        *(v22 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v23 = *(v1 + 176);
      if (v23)
      {
        if (*(v23 + 20))
        {
          *(v23 + 8) = 0;
        }

        *(v23 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      v24 = *(v1 + 184);
      if (v24)
      {
        if (*(v24 + 16))
        {
          *(v24 + 8) = 0;
        }

        *(v24 + 16) = 0;
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v25 = *(v1 + 192);
      if (v25)
      {
        if (*(v25 + 20))
        {
          v26 = *(v25 + 8);
          if (v26 != MEMORY[0x277D82C30])
          {
            if (*(v26 + 23) < 0)
            {
              **v26 = 0;
              *(v26 + 8) = 0;
            }

            else
            {
              *v26 = 0;
              *(v26 + 23) = 0;
            }
          }
        }

        *(v25 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v27 = *(v1 + 200);
      if (v27)
      {
        if (*(v27 + 20))
        {
          v28 = *(v27 + 8);
          if (v28 != MEMORY[0x277D82C30])
          {
            if (*(v28 + 23) < 0)
            {
              **v28 = 0;
              *(v28 + 8) = 0;
            }

            else
            {
              *v28 = 0;
              *(v28 + 23) = 0;
            }
          }
        }

        *(v27 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = proto::gpsd::LtlInfo::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(v1 + 216);
      if (v29)
      {
        if (*(v29 + 24))
        {
          *(v29 + 16) = 0;
          *(v29 + 8) = 0;
        }

        *(v29 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v30 = *(v1 + 224);
      if (v30)
      {
        if (*(v30 + 24))
        {
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
        }

        *(v30 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v31 = *(v1 + 232);
      if (v31)
      {
        if (*(v31 + 16))
        {
          *(v31 + 8) = 0;
        }

        *(v31 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v32 = *(v1 + 240);
      if (v32)
      {
        if (*(v32 + 20))
        {
          v33 = *(v32 + 8);
          if (v33 != MEMORY[0x277D82C30])
          {
            if (*(v33 + 23) < 0)
            {
              **v33 = 0;
              *(v33 + 8) = 0;
            }

            else
            {
              *v33 = 0;
              *(v33 + 23) = 0;
            }
          }
        }

        *(v32 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = proto::gnss::Emergency::EmergConfig::Clear(this);
      }
    }
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    if (v34)
    {
      v35 = *(v1 + 256);
      if (v35 != MEMORY[0x277D82C30])
      {
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 8) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    v34 = *(v1 + 400);
    if ((v34 & 2) != 0)
    {
      v36 = *(v1 + 264);
      if (v36)
      {
        v37 = *(v36 + 80);
        if (v37)
        {
          *(v36 + 24) = 0u;
          *(v36 + 8) = 0u;
        }

        if ((v37 & 0xFF00) != 0)
        {
          *(v36 + 56) = 0u;
          *(v36 + 40) = 0u;
        }

        if ((v37 & 0xFF0000) != 0)
        {
          *(v36 + 72) = 0;
        }

        *(v36 + 80) = 0;
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 304) = 0;
    if ((v34 & 8) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        this = proto::gnss::Emergency::GpsReferenceTime::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v38 = *(v1 + 280);
      if (v38)
      {
        v39 = *(v38 + 68);
        if (v39)
        {
          *(v38 + 24) = 0u;
          *(v38 + 8) = 0u;
        }

        if ((v39 & 0xFF00) != 0)
        {
          *(v38 + 40) = 0;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
        }

        *(v38 + 68) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v40 = *(v1 + 288);
      if (v40)
      {
        if (*(v40 + 52))
        {
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v40 + 8);
        *(v40 + 52) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      this = *(v1 + 296);
      if (this)
      {
        this = proto::gnss::Emergency::GpsAcqAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      this = *(v1 + 312);
      if (this)
      {
        this = proto::gnss::Emergency::CellFTAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      this = *(v1 + 320);
      if (this)
      {
        this = proto::gnss::Emergency::CplaneContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      this = *(v1 + 344);
      if (this)
      {
        this = proto::gnss::Emergency::LocationId::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 308) = 0;
    *(v1 + 368) = 0;
    *(v1 + 372) = 0;
    if ((v34 & 0x8000) != 0)
    {
      this = *(v1 + 376);
      if (this)
      {
        this = proto::gnss::Emergency::SuplContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0x10000) != 0)
  {
    v41 = *(v1 + 384);
    if (v41)
    {
      if (*(v41 + 40))
      {
        *(v41 + 32) = 0;
      }

      this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v41 + 8);
      *(v41 + 40) = 0;
    }
  }

  *(v1 + 336) = 0;
  *(v1 + 360) = 0;
  *v2 = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v1 = *(this + 8);
      if (v1)
      {
        v2 = *(v1 + 96);
        if (v2)
        {
          *(v1 + 56) = 0u;
          *(v1 + 40) = 0u;
          *(v1 + 24) = 0u;
          *(v1 + 8) = 0u;
        }

        if ((v2 & 0xFF00) != 0)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 0;
        }

        *(v1 + 96) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistanceTime::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistancePressure::Clear(proto::gpsd::SetAssistancePressure *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::Clear(proto::gpsd::SetAssistanceAccel *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::Clear(proto::gpsd::SetAssistanceGyro *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMapVector::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 49) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 69) = 0;
    *(this + 65) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0x400000000;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 4;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 15;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistanceFile::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
      if (v1 != MEMORY[0x277D82C30])
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRtiFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::Clear(proto::gpsd::InjectSvidBlocklist *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::DeleteGnssData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 1;
    *(this + 9) = 0;
    *(this + 13) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::TerminationImminent::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::ExitMessage::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 48) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        v3 = *(v2 + 56);
        if (v3)
        {
          *(v2 + 36) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 8) = 0;
          *(v2 + 32) = 0;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 40) = 0;
          *(v2 + 48) = 0;
        }

        *(v2 + 56) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 24) = 0;
        *(v4 + 40) = 0;
        *(v4 + 52) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if ((*(v5 + 36) & 0x1FE) != 0)
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 16) = 0;
        *(v5 + 36) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 20))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 20) = 0;
      }
    }
  }

  *(this + 56) = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetThermalRiskState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::Request::MergePartialFromCodedStream(proto::gpsd::Request *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 304);
  v6 = (this + 308);
  v7 = (this + 372);
LABEL_2:
  while (2)
  {
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v8 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v10 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 99) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v19 = v14 + 1;
          *(a2 + 1) = v19;
          goto LABEL_122;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_122:
        if (v19 >= v11 || (v29 = *v19, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v19 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 99) |= 2u;
        if (v30 >= v11 || *v30 != 24)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_130:
        v377[0] = 0;
        if (v18 >= v11 || (v31 = *v18, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377);
          if (!result)
          {
            return result;
          }

          v31 = v377[0];
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v31))
        {
          *(this + 99) |= 4u;
          *(this + 5) = v31;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 34)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_140:
        *(this + 99) |= 8u;
        v33 = *(this + 3);
        if (!v33)
        {
          operator new();
        }

        v377[0] = 0;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v34;
          *(a2 + 1) = v34 + 1;
        }

        v35 = *(a2 + 14);
        v36 = *(a2 + 15);
        *(a2 + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(v33, a2, v37) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v38 = *(a2 + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(a2 + 14) = v40;
        }

        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 42)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_154:
        *(this + 99) |= 0x10u;
        v42 = *(this + 4);
        if (!v42)
        {
          operator new();
        }

        v377[0] = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v39 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v39)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 50)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_168:
        *(this + 99) |= 0x20u;
        v50 = *(this + 5);
        if (!v50)
        {
          operator new();
        }

        v377[0] = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistancePressure::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v55 = *(a2 + 14);
        v39 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v39)
        {
          *(a2 + 14) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 58)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_182:
        *(this + 99) |= 0x40u;
        v58 = *(this + 6);
        if (!v58)
        {
          operator new();
        }

        v377[0] = 0;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v59;
          *(a2 + 1) = v59 + 1;
        }

        v60 = *(a2 + 14);
        v61 = *(a2 + 15);
        *(a2 + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceAccel::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v63 = *(a2 + 14);
        v39 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v39)
        {
          *(a2 + 14) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 66)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_196:
        *(this + 99) |= 0x80u;
        v66 = *(this + 7);
        if (!v66)
        {
          operator new();
        }

        v377[0] = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceGyro::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v39 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v39)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 != 74)
        {
          continue;
        }

        *(a2 + 1) = v73 + 1;
LABEL_210:
        *(this + 99) |= 0x100u;
        v74 = *(this + 8);
        if (!v74)
        {
          operator new();
        }

        v377[0] = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v75;
          *(a2 + 1) = v75 + 1;
        }

        v76 = *(a2 + 14);
        v77 = *(a2 + 15);
        *(a2 + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceDem::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v39 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v39)
        {
          *(a2 + 14) = v80;
        }

        v81 = *(a2 + 1);
        if (v81 >= *(a2 + 2) || *v81 != 82)
        {
          continue;
        }

        *(a2 + 1) = v81 + 1;
LABEL_224:
        *(this + 99) |= 0x200u;
        v82 = *(this + 9);
        if (!v82)
        {
          operator new();
        }

        v377[0] = 0;
        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v83;
          *(a2 + 1) = v83 + 1;
        }

        v84 = *(a2 + 14);
        v85 = *(a2 + 15);
        *(a2 + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMapVector::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v87 = *(a2 + 14);
        v39 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v39)
        {
          *(a2 + 14) = v88;
        }

        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 != 90)
        {
          continue;
        }

        *(a2 + 1) = v89 + 1;
LABEL_238:
        *(this + 99) |= 0x400u;
        v90 = *(this + 10);
        if (!v90)
        {
          operator new();
        }

        v377[0] = 0;
        v91 = *(a2 + 1);
        if (v91 >= *(a2 + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v91;
          *(a2 + 1) = v91 + 1;
        }

        v92 = *(a2 + 14);
        v93 = *(a2 + 15);
        *(a2 + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMotionActivityContext::MergePartialFromCodedStream(v90, a2, v94) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v95 = *(a2 + 14);
        v39 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v39)
        {
          *(a2 + 14) = v96;
        }

        v97 = *(a2 + 1);
        if (v97 >= *(a2 + 2) || *v97 != 98)
        {
          continue;
        }

        *(a2 + 1) = v97 + 1;
LABEL_252:
        *(this + 99) |= 0x800u;
        v98 = *(this + 11);
        if (!v98)
        {
          operator new();
        }

        v377[0] = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v99;
          *(a2 + 1) = v99 + 1;
        }

        v100 = *(a2 + 14);
        v101 = *(a2 + 15);
        *(a2 + 14) = v100 + 1;
        if (v100 >= v101)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMountState::MergePartialFromCodedStream(v98, a2, v102) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v103 = *(a2 + 14);
        v39 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v39)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 != 106)
        {
          continue;
        }

        *(a2 + 1) = v105 + 1;
LABEL_266:
        *(this + 99) |= 0x1000u;
        v106 = *(this + 12);
        if (!v106)
        {
          operator new();
        }

        v377[0] = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceSignalEnvironment::MergePartialFromCodedStream(v106, a2, v110) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v111 = *(a2 + 14);
        v39 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v39)
        {
          *(a2 + 14) = v112;
        }

        v113 = *(a2 + 1);
        if (v113 >= *(a2 + 2) || *v113 != 114)
        {
          continue;
        }

        *(a2 + 1) = v113 + 1;
LABEL_280:
        *(this + 99) |= 0x2000u;
        v114 = *(this + 13);
        if (!v114)
        {
          operator new();
        }

        v377[0] = 0;
        v115 = *(a2 + 1);
        if (v115 >= *(a2 + 2) || *v115 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v115;
          *(a2 + 1) = v115 + 1;
        }

        v116 = *(a2 + 14);
        v117 = *(a2 + 15);
        *(a2 + 14) = v116 + 1;
        if (v116 >= v117)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceSpeedConstraint::MergePartialFromCodedStream(v114, a2, v118) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v119 = *(a2 + 14);
        v39 = __OFSUB__(v119, 1);
        v120 = v119 - 1;
        if (v120 < 0 == v39)
        {
          *(a2 + 14) = v120;
        }

        v121 = *(a2 + 1);
        if (v121 >= *(a2 + 2) || *v121 != 122)
        {
          continue;
        }

        *(a2 + 1) = v121 + 1;
LABEL_294:
        *(this + 99) |= 0x4000u;
        v122 = *(this + 14);
        if (!v122)
        {
          operator new();
        }

        v377[0] = 0;
        v123 = *(a2 + 1);
        if (v123 >= *(a2 + 2) || *v123 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v123;
          *(a2 + 1) = v123 + 1;
        }

        v124 = *(a2 + 14);
        v125 = *(a2 + 15);
        *(a2 + 14) = v124 + 1;
        if (v124 >= v125)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceAlongTrackVelocity::MergePartialFromCodedStream(v122, a2, v126) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v127 = *(a2 + 14);
        v39 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v39)
        {
          *(a2 + 14) = v128;
        }

        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 <= 1 || *v129 != 130 || v129[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_309:
        *(this + 99) |= 0x8000u;
        v130 = *(this + 15);
        if (!v130)
        {
          operator new();
        }

        v377[0] = 0;
        v131 = *(a2 + 1);
        if (v131 >= *(a2 + 2) || *v131 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v131;
          *(a2 + 1) = v131 + 1;
        }

        v132 = *(a2 + 14);
        v133 = *(a2 + 15);
        *(a2 + 14) = v132 + 1;
        if (v132 >= v133)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(v130, a2, v134) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v135 = *(a2 + 14);
        v39 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v39)
        {
          *(a2 + 14) = v136;
        }

        v137 = *(a2 + 1);
        if (*(a2 + 4) - v137 <= 1 || *v137 != 138 || v137[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v137 + 2;
LABEL_324:
        *(this + 99) |= 0x10000u;
        v138 = *(this + 16);
        if (!v138)
        {
          operator new();
        }

        v377[0] = 0;
        v139 = *(a2 + 1);
        if (v139 >= *(a2 + 2) || *v139 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v139;
          *(a2 + 1) = v139 + 1;
        }

        v140 = *(a2 + 14);
        v141 = *(a2 + 15);
        *(a2 + 14) = v140 + 1;
        if (v140 >= v141)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(v138, a2, v142) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v143 = *(a2 + 14);
        v39 = __OFSUB__(v143, 1);
        v144 = v143 - 1;
        if (v144 < 0 == v39)
        {
          *(a2 + 14) = v144;
        }

        v145 = *(a2 + 1);
        if (*(a2 + 4) - v145 <= 1 || *v145 != 146 || v145[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v145 + 2;
LABEL_339:
        *(this + 99) |= 0x20000u;
        v146 = *(this + 17);
        if (!v146)
        {
          operator new();
        }

        v377[0] = 0;
        v147 = *(a2 + 1);
        if (v147 >= *(a2 + 2) || *v147 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v147;
          *(a2 + 1) = v147 + 1;
        }

        v148 = *(a2 + 14);
        v149 = *(a2 + 15);
        *(a2 + 14) = v148 + 1;
        if (v148 >= v149)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(v146, a2, v150) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v151 = *(a2 + 14);
        v39 = __OFSUB__(v151, 1);
        v152 = v151 - 1;
        if (v152 < 0 == v39)
        {
          *(a2 + 14) = v152;
        }

        v153 = *(a2 + 1);
        if (*(a2 + 4) - v153 <= 1 || *v153 != 154 || v153[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v153 + 2;
LABEL_354:
        *(this + 99) |= 0x40000u;
        v154 = *(this + 18);
        if (!v154)
        {
          operator new();
        }

        v377[0] = 0;
        v155 = *(a2 + 1);
        if (v155 >= *(a2 + 2) || *v155 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v155;
          *(a2 + 1) = v155 + 1;
        }

        v156 = *(a2 + 14);
        v157 = *(a2 + 15);
        *(a2 + 14) = v156 + 1;
        if (v156 >= v157)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::DeleteGnssData::MergePartialFromCodedStream(v154, a2, v158) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v159 = *(a2 + 14);
        v39 = __OFSUB__(v159, 1);
        v160 = v159 - 1;
        if (v160 < 0 == v39)
        {
          *(a2 + 14) = v160;
        }

        v161 = *(a2 + 1);
        if (*(a2 + 4) - v161 <= 1 || *v161 != 162 || v161[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v161 + 2;
LABEL_369:
        *(this + 99) |= 0x80000u;
        v162 = *(this + 19);
        if (!v162)
        {
          operator new();
        }

        v377[0] = 0;
        v163 = *(a2 + 1);
        if (v163 >= *(a2 + 2) || *v163 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v163;
          *(a2 + 1) = v163 + 1;
        }

        v164 = *(a2 + 14);
        v165 = *(a2 + 15);
        *(a2 + 14) = v164 + 1;
        if (v164 >= v165)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(v162, a2, v166) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v167 = *(a2 + 14);
        v39 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v39)
        {
          *(a2 + 14) = v168;
        }

        v169 = *(a2 + 1);
        if (*(a2 + 4) - v169 <= 1 || *v169 != 170 || v169[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v169 + 2;
LABEL_384:
        *(this + 99) |= 0x100000u;
        v170 = *(this + 20);
        if (!v170)
        {
          operator new();
        }

        v377[0] = 0;
        v171 = *(a2 + 1);
        if (v171 >= *(a2 + 2) || *v171 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v171;
          *(a2 + 1) = v171 + 1;
        }

        v172 = *(a2 + 14);
        v173 = *(a2 + 15);
        *(a2 + 14) = v172 + 1;
        if (v172 >= v173)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetNmeaHandler::MergePartialFromCodedStream(v170, a2, v174) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v175 = *(a2 + 14);
        v39 = __OFSUB__(v175, 1);
        v176 = v175 - 1;
        if (v176 < 0 == v39)
        {
          *(a2 + 14) = v176;
        }

        v177 = *(a2 + 1);
        if (*(a2 + 4) - v177 <= 1 || *v177 != 178 || v177[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v177 + 2;
LABEL_399:
        *(this + 99) |= 0x200000u;
        v178 = *(this + 21);
        if (!v178)
        {
          operator new();
        }

        v377[0] = 0;
        v179 = *(a2 + 1);
        if (v179 >= *(a2 + 2) || *v179 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v179;
          *(a2 + 1) = v179 + 1;
        }

        v180 = *(a2 + 14);
        v181 = *(a2 + 15);
        *(a2 + 14) = v180 + 1;
        if (v180 >= v181)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigSimulatorMode::MergePartialFromCodedStream(v178, a2, v182) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v183 = *(a2 + 14);
        v39 = __OFSUB__(v183, 1);
        v184 = v183 - 1;
        if (v184 < 0 == v39)
        {
          *(a2 + 14) = v184;
        }

        v185 = *(a2 + 1);
        if (*(a2 + 4) - v185 <= 1 || *v185 != 186 || v185[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v185 + 2;
LABEL_414:
        *(this + 99) |= 0x400000u;
        v186 = *(this + 22);
        if (!v186)
        {
          operator new();
        }

        v377[0] = 0;
        v187 = *(a2 + 1);
        if (v187 >= *(a2 + 2) || *v187 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v187;
          *(a2 + 1) = v187 + 1;
        }

        v188 = *(a2 + 14);
        v189 = *(a2 + 15);
        *(a2 + 14) = v188 + 1;
        if (v188 >= v189)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigEnableGnssConstellations::MergePartialFromCodedStream(v186, a2, v190) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v191 = *(a2 + 14);
        v39 = __OFSUB__(v191, 1);
        v192 = v191 - 1;
        if (v192 < 0 == v39)
        {
          *(a2 + 14) = v192;
        }

        v193 = *(a2 + 1);
        if (*(a2 + 4) - v193 <= 1 || *v193 != 194 || v193[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v193 + 2;
LABEL_429:
        *(this + 99) |= 0x800000u;
        v194 = *(this + 23);
        if (!v194)
        {
          operator new();
        }

        v377[0] = 0;
        v195 = *(a2 + 1);
        if (v195 >= *(a2 + 2) || *v195 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v195;
          *(a2 + 1) = v195 + 1;
        }

        v196 = *(a2 + 14);
        v197 = *(a2 + 15);
        *(a2 + 14) = v196 + 1;
        if (v196 >= v197)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigDutyCycling::MergePartialFromCodedStream(v194, a2, v198) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v199 = *(a2 + 14);
        v39 = __OFSUB__(v199, 1);
        v200 = v199 - 1;
        if (v200 < 0 == v39)
        {
          *(a2 + 14) = v200;
        }

        v201 = *(a2 + 1);
        if (*(a2 + 4) - v201 <= 1 || *v201 != 202 || v201[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v201 + 2;
LABEL_444:
        *(this + 99) |= 0x1000000u;
        v202 = *(this + 24);
        if (!v202)
        {
          operator new();
        }

        v377[0] = 0;
        v203 = *(a2 + 1);
        if (v203 >= *(a2 + 2) || *v203 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v203;
          *(a2 + 1) = v203 + 1;
        }

        v204 = *(a2 + 14);
        v205 = *(a2 + 15);
        *(a2 + 14) = v204 + 1;
        if (v204 >= v205)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::TerminationImminent::MergePartialFromCodedStream(v202, a2, v206) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v207 = *(a2 + 14);
        v39 = __OFSUB__(v207, 1);
        v208 = v207 - 1;
        if (v208 < 0 == v39)
        {
          *(a2 + 14) = v208;
        }

        v209 = *(a2 + 1);
        if (*(a2 + 4) - v209 <= 1 || *v209 != 210 || v209[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v209 + 2;
LABEL_459:
        *(this + 99) |= 0x2000000u;
        v210 = *(this + 25);
        if (!v210)
        {
          operator new();
        }

        v377[0] = 0;
        v211 = *(a2 + 1);
        if (v211 >= *(a2 + 2) || *v211 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v211;
          *(a2 + 1) = v211 + 1;
        }

        v212 = *(a2 + 14);
        v213 = *(a2 + 15);
        *(a2 + 14) = v212 + 1;
        if (v212 >= v213)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::ExitMessage::MergePartialFromCodedStream(v210, a2, v214) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v215 = *(a2 + 14);
        v39 = __OFSUB__(v215, 1);
        v216 = v215 - 1;
        if (v216 < 0 == v39)
        {
          *(a2 + 14) = v216;
        }

        v217 = *(a2 + 1);
        if (*(a2 + 4) - v217 <= 1 || *v217 != 218 || v217[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v217 + 2;
LABEL_474:
        *(this + 99) |= 0x4000000u;
        v218 = *(this + 26);
        if (!v218)
        {
          operator new();
        }

        v377[0] = 0;
        v219 = *(a2 + 1);
        if (v219 >= *(a2 + 2) || *v219 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v219;
          *(a2 + 1) = v219 + 1;
        }

        v220 = *(a2 + 14);
        v221 = *(a2 + 15);
        *(a2 + 14) = v220 + 1;
        if (v220 >= v221)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::LtlInfo::MergePartialFromCodedStream(v218, a2, v222) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v223 = *(a2 + 14);
        v39 = __OFSUB__(v223, 1);
        v224 = v223 - 1;
        if (v224 < 0 == v39)
        {
          *(a2 + 14) = v224;
        }

        v225 = *(a2 + 1);
        if (*(a2 + 4) - v225 <= 1 || *v225 != 226 || v225[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v225 + 2;
LABEL_489:
        *(this + 99) |= 0x8000000u;
        v226 = *(this + 27);
        if (!v226)
        {
          operator new();
        }

        v377[0] = 0;
        v227 = *(a2 + 1);
        if (v227 >= *(a2 + 2) || *v227 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v227;
          *(a2 + 1) = v227 + 1;
        }

        v228 = *(a2 + 14);
        v229 = *(a2 + 15);
        *(a2 + 14) = v228 + 1;
        if (v228 >= v229)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::StartContext::MergePartialFromCodedStream(v226, a2, v230) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v231 = *(a2 + 14);
        v39 = __OFSUB__(v231, 1);
        v232 = v231 - 1;
        if (v232 < 0 == v39)
        {
          *(a2 + 14) = v232;
        }

        v233 = *(a2 + 1);
        if (*(a2 + 4) - v233 <= 1 || *v233 != 242 || v233[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v233 + 2;
LABEL_504:
        *(this + 99) |= 0x10000000u;
        v234 = *(this + 28);
        if (!v234)
        {
          operator new();
        }

        v377[0] = 0;
        v235 = *(a2 + 1);
        if (v235 >= *(a2 + 2) || *v235 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v235;
          *(a2 + 1) = v235 + 1;
        }

        v236 = *(a2 + 14);
        v237 = *(a2 + 15);
        *(a2 + 14) = v236 + 1;
        if (v236 >= v237)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetThermalRiskState::MergePartialFromCodedStream(v234, a2, v238) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v239 = *(a2 + 14);
        v39 = __OFSUB__(v239, 1);
        v240 = v239 - 1;
        if (v240 < 0 == v39)
        {
          *(a2 + 14) = v240;
        }

        v241 = *(a2 + 1);
        if (*(a2 + 4) - v241 <= 1 || *v241 != 250 || v241[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v241 + 2;
LABEL_519:
        *(this + 99) |= 0x20000000u;
        v242 = *(this + 29);
        if (!v242)
        {
          operator new();
        }

        v377[0] = 0;
        v243 = *(a2 + 1);
        if (v243 >= *(a2 + 2) || *v243 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v243;
          *(a2 + 1) = v243 + 1;
        }

        v244 = *(a2 + 14);
        v245 = *(a2 + 15);
        *(a2 + 14) = v244 + 1;
        if (v244 >= v245)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigRfBandEnable::MergePartialFromCodedStream(v242, a2, v246) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v247 = *(a2 + 14);
        v39 = __OFSUB__(v247, 1);
        v248 = v247 - 1;
        if (v248 < 0 == v39)
        {
          *(a2 + 14) = v248;
        }

        v249 = *(a2 + 1);
        if (*(a2 + 4) - v249 <= 1 || *v249 != 130 || v249[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v249 + 2;
LABEL_534:
        *(this + 99) |= 0x40000000u;
        v250 = *(this + 30);
        if (!v250)
        {
          operator new();
        }

        v377[0] = 0;
        v251 = *(a2 + 1);
        if (v251 >= *(a2 + 2) || *v251 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v251;
          *(a2 + 1) = v251 + 1;
        }

        v252 = *(a2 + 14);
        v253 = *(a2 + 15);
        *(a2 + 14) = v252 + 1;
        if (v252 >= v253)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(v250, a2, v254) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v255 = *(a2 + 14);
        v39 = __OFSUB__(v255, 1);
        v256 = v255 - 1;
        if (v256 < 0 == v39)
        {
          *(a2 + 14) = v256;
        }

        v257 = *(a2 + 1);
        if (*(a2 + 4) - v257 <= 1 || *v257 != 146 || v257[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v257 + 2;
LABEL_549:
        *(this + 99) |= 0x80000000;
        v258 = *(this + 31);
        if (!v258)
        {
          operator new();
        }

        v377[0] = 0;
        v259 = *(a2 + 1);
        if (v259 >= *(a2 + 2) || *v259 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v259;
          *(a2 + 1) = v259 + 1;
        }

        v260 = *(a2 + 14);
        v261 = *(a2 + 15);
        *(a2 + 14) = v260 + 1;
        if (v260 >= v261)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::EmergConfig::MergePartialFromCodedStream(v258, a2, v262) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v263 = *(a2 + 14);
        v39 = __OFSUB__(v263, 1);
        v264 = v263 - 1;
        if (v264 < 0 == v39)
        {
          *(a2 + 14) = v264;
        }

        v265 = *(a2 + 1);
        if (*(a2 + 4) - v265 <= 1 || *v265 != 154 || v265[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v265 + 2;
LABEL_564:
        *(this + 100) |= 1u;
        if (*(this + 32) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v266 = *(a2 + 1);
        if (*(a2 + 4) - v266 < 2 || *v266 != 226 || v266[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v266 + 2;
LABEL_571:
        *(this + 100) |= 2u;
        v267 = *(this + 33);
        if (!v267)
        {
          operator new();
        }

        v377[0] = 0;
        v268 = *(a2 + 1);
        if (v268 >= *(a2 + 2) || *v268 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v268;
          *(a2 + 1) = v268 + 1;
        }

        v269 = *(a2 + 14);
        v270 = *(a2 + 15);
        *(a2 + 14) = v269 + 1;
        if (v269 >= v270)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::PositionRequest::MergePartialFromCodedStream(v267, a2, v271) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v272 = *(a2 + 14);
        v39 = __OFSUB__(v272, 1);
        v273 = v272 - 1;
        if (v273 < 0 == v39)
        {
          *(a2 + 14) = v273;
        }

        v274 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v274 <= 1 || *v274 != 232 || v274[1] != 3)
        {
          continue;
        }

        v23 = (v274 + 2);
        *(a2 + 1) = v23;
LABEL_586:
        if (v23 >= v22 || (v275 = *v23, (v275 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v276 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v5 = v275;
          v276 = (v23 + 1);
          *(a2 + 1) = v276;
        }

        v24 = *(this + 100) | 4;
        *(this + 100) = v24;
        if (v22 - v276 < 2 || *v276 != 242 || v276[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v276 + 2;
LABEL_595:
        *(this + 100) = v24 | 8;
        v277 = *(this + 34);
        if (!v277)
        {
          operator new();
        }

        v377[0] = 0;
        v278 = *(a2 + 1);
        if (v278 >= *(a2 + 2) || *v278 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v278;
          *(a2 + 1) = v278 + 1;
        }

        v279 = *(a2 + 14);
        v280 = *(a2 + 15);
        *(a2 + 14) = v279 + 1;
        if (v279 >= v280)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsReferenceTime::MergePartialFromCodedStream(v277, a2, v281) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v282 = *(a2 + 14);
        v39 = __OFSUB__(v282, 1);
        v283 = v282 - 1;
        if (v283 < 0 == v39)
        {
          *(a2 + 14) = v283;
        }

        v284 = *(a2 + 1);
        if (*(a2 + 4) - v284 <= 1 || *v284 != 250 || v284[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v284 + 2;
LABEL_610:
        *(this + 100) |= 0x10u;
        v285 = *(this + 35);
        if (!v285)
        {
          operator new();
        }

        v377[0] = 0;
        v286 = *(a2 + 1);
        if (v286 >= *(a2 + 2) || *v286 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v286;
          *(a2 + 1) = v286 + 1;
        }

        v287 = *(a2 + 14);
        v288 = *(a2 + 15);
        *(a2 + 14) = v287 + 1;
        if (v287 >= v288)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::ReferenceLocation::MergePartialFromCodedStream(v285, a2, v289) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v290 = *(a2 + 14);
        v39 = __OFSUB__(v290, 1);
        v291 = v290 - 1;
        if (v291 < 0 == v39)
        {
          *(a2 + 14) = v291;
        }

        v292 = *(a2 + 1);
        if (*(a2 + 4) - v292 <= 1 || *v292 != 130 || v292[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v292 + 2;
LABEL_625:
        *(this + 100) |= 0x20u;
        v293 = *(this + 36);
        if (!v293)
        {
          operator new();
        }

        v377[0] = 0;
        v294 = *(a2 + 1);
        if (v294 >= *(a2 + 2) || *v294 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v294;
          *(a2 + 1) = v294 + 1;
        }

        v295 = *(a2 + 14);
        v296 = *(a2 + 15);
        *(a2 + 14) = v295 + 1;
        if (v295 >= v296)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsNavigationModel::MergePartialFromCodedStream(v293, a2, v297) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v298 = *(a2 + 14);
        v39 = __OFSUB__(v298, 1);
        v299 = v298 - 1;
        if (v299 < 0 == v39)
        {
          *(a2 + 14) = v299;
        }

        v300 = *(a2 + 1);
        if (*(a2 + 4) - v300 <= 1 || *v300 != 138 || v300[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v300 + 2;
LABEL_640:
        *(this + 100) |= 0x40u;
        v301 = *(this + 37);
        if (!v301)
        {
          operator new();
        }

        v377[0] = 0;
        v302 = *(a2 + 1);
        if (v302 >= *(a2 + 2) || *v302 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v302;
          *(a2 + 1) = v302 + 1;
        }

        v303 = *(a2 + 14);
        v304 = *(a2 + 15);
        *(a2 + 14) = v303 + 1;
        if (v303 >= v304)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsAcqAssistance::MergePartialFromCodedStream(v301, a2, v305) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v306 = *(a2 + 14);
        v39 = __OFSUB__(v306, 1);
        v307 = v306 - 1;
        if (v307 < 0 == v39)
        {
          *(a2 + 14) = v307;
        }

        v308 = *(a2 + 1);
        if (*(a2 + 4) - v308 <= 1 || *v308 != 146 || v308[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v308 + 2;
LABEL_655:
        *(this + 100) |= 0x80u;
        v309 = *(this + 39);
        if (!v309)
        {
          operator new();
        }

        v377[0] = 0;
        v310 = *(a2 + 1);
        if (v310 >= *(a2 + 2) || *v310 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v310;
          *(a2 + 1) = v310 + 1;
        }

        v311 = *(a2 + 14);
        v312 = *(a2 + 15);
        *(a2 + 14) = v311 + 1;
        if (v311 >= v312)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CellFTAssistance::MergePartialFromCodedStream(v309, a2, v313) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v314 = *(a2 + 14);
        v39 = __OFSUB__(v314, 1);
        v315 = v314 - 1;
        if (v315 < 0 == v39)
        {
          *(a2 + 14) = v315;
        }

        v316 = *(a2 + 1);
        if (*(a2 + 4) - v316 <= 1 || *v316 != 154 || v316[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v316 + 2;
LABEL_670:
        *(this + 100) |= 0x100u;
        v317 = *(this + 40);
        if (!v317)
        {
          operator new();
        }

        v377[0] = 0;
        v318 = *(a2 + 1);
        if (v318 >= *(a2 + 2) || *v318 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v318;
          *(a2 + 1) = v318 + 1;
        }

        v319 = *(a2 + 14);
        v320 = *(a2 + 15);
        *(a2 + 14) = v319 + 1;
        if (v319 >= v320)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CplaneContext::MergePartialFromCodedStream(v317, a2, v321) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v322 = *(a2 + 14);
        v39 = __OFSUB__(v322, 1);
        v323 = v322 - 1;
        if (v323 < 0 == v39)
        {
          *(a2 + 14) = v323;
        }

        v324 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v324 > 1)
        {
          v325 = *v324;
          goto LABEL_683;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_130;
      case 4u:
        if (v10 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_111;
      case 5u:
        if (v10 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_111;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_168;
        }

        goto LABEL_111;
      case 7u:
        if (v10 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_111;
      case 8u:
        if (v10 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_111;
      case 9u:
        if (v10 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_111;
      case 0xAu:
        if (v10 == 2)
        {
          goto LABEL_224;
        }

        goto LABEL_111;
      case 0xBu:
        if (v10 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_111;
      case 0xCu:
        if (v10 == 2)
        {
          goto LABEL_252;
        }

        goto LABEL_111;
      case 0xDu:
        if (v10 == 2)
        {
          goto LABEL_266;
        }

        goto LABEL_111;
      case 0xEu:
        if (v10 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_111;
      case 0xFu:
        if (v10 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      case 0x10u:
        if (v10 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_111;
      case 0x11u:
        if (v10 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_111;
      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_339;
        }

        goto LABEL_111;
      case 0x13u:
        if (v10 == 2)
        {
          goto LABEL_354;
        }

        goto LABEL_111;
      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_111;
      case 0x15u:
        if (v10 == 2)
        {
          goto LABEL_384;
        }

        goto LABEL_111;
      case 0x16u:
        if (v10 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_111;
      case 0x17u:
        if (v10 == 2)
        {
          goto LABEL_414;
        }

        goto LABEL_111;
      case 0x18u:
        if (v10 == 2)
        {
          goto LABEL_429;
        }

        goto LABEL_111;
      case 0x19u:
        if (v10 == 2)
        {
          goto LABEL_444;
        }

        goto LABEL_111;
      case 0x1Au:
        if (v10 == 2)
        {
          goto LABEL_459;
        }

        goto LABEL_111;
      case 0x1Bu:
        if (v10 == 2)
        {
          goto LABEL_474;
        }

        goto LABEL_111;
      case 0x1Cu:
        if (v10 == 2)
        {
          goto LABEL_489;
        }

        goto LABEL_111;
      case 0x1Eu:
        if (v10 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_111;
      case 0x1Fu:
        if (v10 == 2)
        {
          goto LABEL_519;
        }

        goto LABEL_111;
      case 0x20u:
        if (v10 == 2)
        {
          goto LABEL_534;
        }

        goto LABEL_111;
      case 0x32u:
        if (v10 == 2)
        {
          goto LABEL_549;
        }

        goto LABEL_111;
      case 0x33u:
        if (v10 == 2)
        {
          goto LABEL_564;
        }

        goto LABEL_111;
      case 0x3Cu:
        if (v10 == 2)
        {
          goto LABEL_571;
        }

        goto LABEL_111;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_586;
      case 0x3Eu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v24 = *(this + 100);
        goto LABEL_595;
      case 0x3Fu:
        if (v10 == 2)
        {
          goto LABEL_610;
        }

        goto LABEL_111;
      case 0x40u:
        if (v10 == 2)
        {
          goto LABEL_625;
        }

        goto LABEL_111;
      case 0x41u:
        if (v10 == 2)
        {
          goto LABEL_640;
        }

        goto LABEL_111;
      case 0x42u:
        if (v10 == 2)
        {
          goto LABEL_655;
        }

        goto LABEL_111;
      case 0x43u:
        if (v10 == 2)
        {
          goto LABEL_670;
        }

        goto LABEL_111;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          while (1)
          {
            v376 = 0;
            if (v28 >= v27 || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v376))
              {
                return 0;
              }
            }

            else
            {
              v376 = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v326 = *(this + 84);
            if (v326 == *(this + 85))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 82, v326 + 1);
              v326 = *(this + 84);
            }

            v327 = v376;
            v328 = *(this + 41);
            *(this + 84) = v326 + 1;
            *(v328 + 4 * v326) = v327;
            v329 = *(this + 85) - *(this + 84);
            if (v329 >= 1)
            {
              v330 = v329 + 1;
              do
              {
                v331 = *(a2 + 1);
                v332 = *(a2 + 2);
                if (v332 - v331 < 2 || *v331 != 176 || v331[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v331 + 2;
                if ((v331 + 2) >= v332 || v331[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v376))
                  {
                    return 0;
                  }
                }

                else
                {
                  v376 = v331[2];
                  *(a2 + 1) = v331 + 3;
                }

                v333 = *(this + 84);
                if (v333 >= *(this + 85))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v377);
                  v333 = *(this + 84);
                }

                v334 = v376;
                v335 = *(this + 41);
                *(this + 84) = v333 + 1;
                *(v335 + 4 * v333) = v334;
                --v330;
              }

              while (v330 > 1);
            }

LABEL_704:
            v324 = *(a2 + 1);
            v27 = *(a2 + 2);
            if (v27 - v324 < 2)
            {
              goto LABEL_2;
            }

            v325 = *v324;
            if (v325 == 186)
            {
              break;
            }

LABEL_683:
            if (v325 != 176 || v324[1] != 4)
            {
              goto LABEL_2;
            }

            v28 = (v324 + 2);
            *(a2 + 1) = v28;
          }

          if (v324[1] == 4)
          {
            *(a2 + 1) = v324 + 2;
LABEL_708:
            *(this + 100) |= 0x400u;
            v336 = *(this + 43);
            if (!v336)
            {
              operator new();
            }

            v377[0] = 0;
            v337 = *(a2 + 1);
            if (v337 >= *(a2 + 2) || *v337 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
              {
                return 0;
              }
            }

            else
            {
              v377[0] = *v337;
              *(a2 + 1) = v337 + 1;
            }

            v338 = *(a2 + 14);
            v339 = *(a2 + 15);
            *(a2 + 14) = v338 + 1;
            if (v338 >= v339)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!proto::gnss::Emergency::LocationId::MergePartialFromCodedStream(v336, a2, v340) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v341 = *(a2 + 14);
            v39 = __OFSUB__(v341, 1);
            v342 = v341 - 1;
            if (v342 < 0 == v39)
            {
              *(a2 + 14) = v342;
            }

            v343 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v15 - v343 > 1 && *v343 == 192 && v343[1] == 4)
            {
              v16 = (v343 + 2);
              *(a2 + 1) = v16;
LABEL_723:
              if (v16 >= v15 || (v344 = *v16, (v344 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                if (!result)
                {
                  return result;
                }

                v345 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *v6 = v344;
                v345 = (v16 + 1);
                *(a2 + 1) = v345;
              }

              *(this + 100) |= 0x800u;
              if (v15 - v345 >= 2)
              {
                v346 = *v345;
                goto LABEL_730;
              }
            }
          }

          continue;
        }

        if (v10 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 41);
          if (result)
          {
            goto LABEL_704;
          }

          return result;
        }

        goto LABEL_111;
      case 0x47u:
        if (v10 == 2)
        {
          goto LABEL_708;
        }

        goto LABEL_111;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_723;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v26 = *(a2 + 1);
          v15 = *(a2 + 2);
          while (1)
          {
            v376 = 0;
            if (v26 >= v15 || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v376))
              {
                return 0;
              }
            }

            else
            {
              v376 = *v26;
              *(a2 + 1) = v26 + 1;
            }

            v347 = *(this + 90);
            if (v347 == *(this + 91))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 88, v347 + 1);
              v347 = *(this + 90);
            }

            v348 = v376;
            v349 = *(this + 44);
            *(this + 90) = v347 + 1;
            *(v349 + 4 * v347) = v348;
            v350 = *(this + 91) - *(this + 90);
            if (v350 >= 1)
            {
              v351 = v350 + 1;
              do
              {
                v352 = *(a2 + 1);
                v353 = *(a2 + 2);
                if (v353 - v352 < 2 || *v352 != 200 || v352[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v352 + 2;
                if ((v352 + 2) >= v353 || v352[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v376))
                  {
                    return 0;
                  }
                }

                else
                {
                  v376 = v352[2];
                  *(a2 + 1) = v352 + 3;
                }

                v354 = *(this + 90);
                if (v354 >= *(this + 91))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v377);
                  v354 = *(this + 90);
                }

                v355 = v376;
                v356 = *(this + 44);
                *(this + 90) = v354 + 1;
                *(v356 + 4 * v354) = v355;
                --v351;
              }

              while (v351 > 1);
            }

LABEL_751:
            v345 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v15 - v345 < 2)
            {
              goto LABEL_2;
            }

            v346 = *v345;
            if (v346 == 208)
            {
              break;
            }

LABEL_730:
            if (v346 != 200 || v345[1] != 4)
            {
              goto LABEL_2;
            }

            v26 = (v345 + 2);
            *(a2 + 1) = v26;
          }

          if (v345[1] == 4)
          {
            v20 = (v345 + 2);
            *(a2 + 1) = v20;
LABEL_755:
            v377[0] = 0;
            if (v20 >= v15 || (v357 = *v20, (v357 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377);
              if (!result)
              {
                return result;
              }

              v357 = v377[0];
              v358 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              v358 = (v20 + 1);
              *(a2 + 1) = v358;
            }

            *(this + 368) = v357 != 0;
            *(this + 100) |= 0x2000u;
            if (v15 - v358 >= 2 && *v358 == 216 && v358[1] == 4)
            {
              v21 = (v358 + 2);
              *(a2 + 1) = v21;
LABEL_764:
              if (v21 >= v15 || (v359 = *v21, (v359 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                if (!result)
                {
                  return result;
                }

                v360 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *v7 = v359;
                v360 = (v21 + 1);
                *(a2 + 1) = v360;
              }

              v25 = *(this + 100) | 0x4000;
              *(this + 100) = v25;
              if (v15 - v360 >= 2 && *v360 == 226 && v360[1] == 4)
              {
                *(a2 + 1) = v360 + 2;
LABEL_773:
                *(this + 100) = v25 | 0x8000;
                v361 = *(this + 47);
                if (!v361)
                {
                  operator new();
                }

                v377[0] = 0;
                v362 = *(a2 + 1);
                if (v362 >= *(a2 + 2) || *v362 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
                  {
                    return 0;
                  }
                }

                else
                {
                  v377[0] = *v362;
                  *(a2 + 1) = v362 + 1;
                }

                v363 = *(a2 + 14);
                v364 = *(a2 + 15);
                *(a2 + 14) = v363 + 1;
                if (v363 >= v364)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!proto::gnss::Emergency::SuplContext::MergePartialFromCodedStream(v361, a2, v365) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v366 = *(a2 + 14);
                v39 = __OFSUB__(v366, 1);
                v367 = v366 - 1;
                if (v367 < 0 == v39)
                {
                  *(a2 + 14) = v367;
                }

                v368 = *(a2 + 1);
                if (*(a2 + 4) - v368 > 1 && *v368 == 234 && v368[1] == 4)
                {
                  *(a2 + 1) = v368 + 2;
LABEL_788:
                  *(this + 100) |= 0x10000u;
                  v369 = *(this + 48);
                  if (!v369)
                  {
                    operator new();
                  }

                  v377[0] = 0;
                  v370 = *(a2 + 1);
                  if (v370 >= *(a2 + 2) || *v370 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v377[0] = *v370;
                    *(a2 + 1) = v370 + 1;
                  }

                  v371 = *(a2 + 14);
                  v372 = *(a2 + 15);
                  *(a2 + 14) = v371 + 1;
                  if (v371 >= v372)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!proto::gnss::Emergency::WlanMeasurementList::MergePartialFromCodedStream(v369, a2, v373) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v374 = *(a2 + 14);
                  v39 = __OFSUB__(v374, 1);
                  v375 = v374 - 1;
                  if (v375 < 0 == v39)
                  {
                    *(a2 + 14) = v375;
                  }

                  if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }

          continue;
        }

        if (v10 != 2)
        {
LABEL_111:
          if (v10 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 44);
        if (result)
        {
          goto LABEL_751;
        }

        return result;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v20 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_755;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_764;
      case 0x4Cu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v25 = *(this + 100);
        goto LABEL_773;
      case 0x4Du:
        if (v10 == 2)
        {
          goto LABEL_788;
        }

        goto LABEL_111;
      default:
        goto LABEL_111;
    }
  }
}

void sub_24554AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::Request::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 396);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Request::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(proto::gpsd::Request::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(proto::gpsd::Request::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(proto::gpsd::Request::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v37 = *(v5 + 264);
  if (!v37)
  {
    v37 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v37, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v38 = *(v5 + 272);
  if (!v38)
  {
    v38 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v39 = *(v5 + 280);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v40 = *(v5 + 288);
  if (!v40)
  {
    v40 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v41 = *(v5 + 296);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v42 = *(v5 + 312);
  if (!v42)
  {
    v42 = *(proto::gpsd::Request::default_instance_ + 312);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v42, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v43 = *(v5 + 320);
    if (!v43)
    {
      v43 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v43, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v44 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 336));
  }

  v45 = *(v5 + 400);
  if ((v45 & 0x400) != 0)
  {
    v46 = *(v5 + 344);
    if (!v46)
    {
      v46 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v46, a2, a4);
    v45 = *(v5 + 400);
  }

  if ((v45 & 0x800) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v47 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 360));
  }

  v48 = *(v5 + 400);
  if ((v48 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v48 = *(v5 + 400);
    if ((v48 & 0x4000) == 0)
    {
LABEL_171:
      if ((v48 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v48 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v48 = *(v5 + 400);
  if ((v48 & 0x8000) == 0)
  {
LABEL_172:
    if ((v48 & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_179;
  }

LABEL_176:
  v49 = *(v5 + 376);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v49, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v50 = *(v5 + 384);
    if (!v50)
    {
      v50 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v50, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::Request::ByteSize(proto::gpsd::Request *this, unint64_t a2)
{
  v3 = *(this + 99);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 99);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 99);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 99);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  v10 = proto::gpsd::InjectAssistancePosition::ByteSize(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v4 += v11 + v12 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  v14 = proto::gpsd::InjectAssistanceTime::ByteSize(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  v18 = proto::gpsd::SetAssistancePressure::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 += v19 + v20 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v21 = *(this + 6);
  if (!v21)
  {
    v21 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  v22 = proto::gpsd::SetAssistanceAccel::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 += v23 + v24 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(this + 7);
    if (!v25)
    {
      v25 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    v26 = proto::gpsd::SetAssistanceGyro::ByteSize(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    }

    else
    {
      v28 = 1;
    }

    v4 += v27 + v28 + 1;
    v3 = *(this + 99);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(this + 8);
    if (!v29)
    {
      v29 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    v30 = proto::gpsd::SetAssistanceDem::ByteSize(v29, a2);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    }

    else
    {
      v32 = 1;
    }

    v4 += v31 + v32 + 1;
    v3 = *(this + 99);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(this + 9);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  v34 = proto::gpsd::SetAssistanceMapVector::ByteSize(v33, a2);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
  }

  else
  {
    v36 = 1;
  }

  v4 += v35 + v36 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v37 = *(this + 10);
  if (!v37)
  {
    v37 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  v38 = proto::gpsd::SetAssistanceMotionActivityContext::ByteSize(v37, a2);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
  }

  else
  {
    v40 = 1;
  }

  v4 += v39 + v40 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v41 = *(this + 11);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  v42 = proto::gpsd::SetAssistanceMountState::ByteSize(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
  }

  else
  {
    v44 = 1;
  }

  v4 += v43 + v44 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v45 = *(this + 12);
  if (!v45)
  {
    v45 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  v46 = proto::gpsd::SetAssistanceSignalEnvironment::ByteSize(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
  }

  else
  {
    v48 = 1;
  }

  v4 += v47 + v48 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v49 = *(this + 13);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  v50 = proto::gpsd::SetAssistanceSpeedConstraint::ByteSize(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
  }

  else
  {
    v52 = 1;
  }

  v4 += v51 + v52 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x4000) == 0)
  {
LABEL_62:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v53 = *(this + 14);
  if (!v53)
  {
    v53 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  v54 = proto::gpsd::SetAssistanceAlongTrackVelocity::ByteSize(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
  }

  else
  {
    v56 = 1;
  }

  v4 += v55 + v56 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v57 = *(this + 15);
    if (!v57)
    {
      v57 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    v58 = proto::gpsd::InjectAssistanceFile::ByteSize(v57, a2);
    v59 = v58;
    if (v58 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
    }

    else
    {
      v60 = 1;
    }

    v4 += v59 + v60 + 2;
    v3 = *(this + 99);
  }

LABEL_112:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v3 & 0x10000) != 0)
  {
    v61 = *(this + 16);
    if (!v61)
    {
      v61 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    v62 = proto::gpsd::InjectRtiFile::ByteSize(v61, a2);
    v63 = v62;
    if (v62 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
    }

    else
    {
      v64 = 1;
    }

    v4 += v63 + v64 + 2;
    v3 = *(this + 99);
    if ((v3 & 0x20000) == 0)
    {
LABEL_115:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v65 = *(this + 17);
  if (!v65)
  {
    v65 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  v66 = proto::gpsd::InjectSvidBlocklist::ByteSize(v65, a2);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
  }

  else
  {
    v68 = 1;
  }

  v4 += v67 + v68 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x40000) == 0)
  {
LABEL_116:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v69 = *(this + 18);
  if (!v69)
  {
    v69 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  if ((*(v69 + 20) & 1) == 0)
  {
    v70 = 0;
    *(v69 + 16) = 0;
LABEL_139:
    v72 = 1;
    goto LABEL_141;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v69 + 8));
  v70 = v71 + 1;
  *(v69 + 16) = v71 + 1;
  if ((v71 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v71 + 1));
LABEL_141:
  v4 += v72 + v70 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x80000) == 0)
  {
LABEL_117:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_145;
  }

LABEL_142:
  v73 = *(this + 19);
  if (!v73)
  {
    v73 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  v4 += proto::gpsd::SetPvtmReport::ByteSize(v73) + 3;
  v3 = *(this + 99);
  if ((v3 & 0x100000) == 0)
  {
LABEL_118:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_145:
  v74 = *(this + 20);
  if (!v74)
  {
    v74 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  if ((*(v74 + 20) & 1) == 0)
  {
    v75 = 0;
    *(v74 + 16) = 0;
LABEL_150:
    v77 = 1;
    goto LABEL_152;
  }

  v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v74 + 8));
  v75 = v76 + 1;
  *(v74 + 16) = v76 + 1;
  if ((v76 + 1) < 0x80)
  {
    goto LABEL_150;
  }

  v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v76 + 1));
LABEL_152:
  v4 += v77 + v75 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x200000) == 0)
  {
LABEL_119:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_159;
  }

LABEL_153:
  v78 = *(this + 21);
  if (!v78)
  {
    v78 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  v79 = proto::gpsd::SetConfigSimulatorMode::ByteSize(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
  }

  else
  {
    v81 = 1;
  }

  v4 += v80 + v81 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x400000) == 0)
  {
LABEL_120:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

LABEL_159:
  v82 = *(this + 22);
  if (!v82)
  {
    v82 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  v83 = proto::gpsd::SetConfigEnableGnssConstellations::ByteSize(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
  }

  else
  {
    v85 = 1;
  }

  v4 += v84 + v85 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x800000) != 0)
  {
LABEL_165:
    v86 = *(this + 23);
    if (!v86)
    {
      v86 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    if (*(v86 + 16))
    {
      v87 = 2 * (*(v86 + 16) & 1);
    }

    else
    {
      v87 = 0;
    }

    *(v86 + 12) = v87;
    v4 += v87 + 3;
    v3 = *(this + 99);
  }

LABEL_171:
  if (!HIBYTE(v3))
  {
    goto LABEL_229;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v88 = *(this + 24);
    if (!v88)
    {
      v88 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    v89 = proto::gpsd::TerminationImminent::ByteSize(v88, a2);
    v90 = v89;
    if (v89 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
    }

    else
    {
      v91 = 1;
    }

    v4 += v90 + v91 + 2;
    v3 = *(this + 99);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_174:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_174;
  }

  v92 = *(this + 25);
  if (!v92)
  {
    v92 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  v93 = proto::gpsd::ExitMessage::ByteSize(v92, a2);
  v94 = v93;
  if (v93 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
  }

  else
  {
    v95 = 1;
  }

  v4 += v94 + v95 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_175:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_193:
  v96 = *(this + 26);
  if (!v96)
  {
    v96 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  v97 = proto::gpsd::LtlInfo::ByteSize(v96, a2);
  v98 = v97;
  if (v97 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
  }

  else
  {
    v99 = 1;
  }

  v4 += v98 + v99 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_176:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_205;
  }

LABEL_199:
  v100 = *(this + 27);
  if (!v100)
  {
    v100 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  v101 = proto::gpsd::StartContext::ByteSize(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
  }

  else
  {
    v103 = 1;
  }

  v4 += v102 + v103 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_177:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_211;
  }

LABEL_205:
  v104 = *(this + 28);
  if (!v104)
  {
    v104 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  v105 = proto::gpsd::SetThermalRiskState::ByteSize(v104, a2);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
  }

  else
  {
    v107 = 1;
  }

  v4 += v106 + v107 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_178:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_211:
  v108 = *(this + 29);
  if (!v108)
  {
    v108 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  if (*(v108 + 16))
  {
    v109 = 2 * (*(v108 + 16) & 1) + (*(v108 + 16) & 2);
  }

  else
  {
    v109 = 0;
  }

  *(v108 + 12) = v109;
  v4 += v109 + 3;
  v3 = *(this + 99);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_179:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v110 = *(this + 30);
  if (!v110)
  {
    v110 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  v111 = proto::gpsd::InjectRavenOrbitFile::ByteSize(v110, a2);
  v112 = v111;
  if (v111 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
  }

  else
  {
    v113 = 1;
  }

  v4 += v112 + v113 + 2;
  if ((*(this + 99) & 0x80000000) != 0)
  {
LABEL_223:
    v114 = *(this + 31);
    if (!v114)
    {
      v114 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    v115 = proto::gnss::Emergency::EmergConfig::ByteSize(v114, a2);
    v116 = v115;
    if (v115 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115);
    }

    else
    {
      v117 = 1;
    }

    v4 += v116 + v117 + 2;
  }

LABEL_229:
  v118 = *(this + 100);
  if (!v118)
  {
    goto LABEL_288;
  }

  if (v118)
  {
    v119 = *(this + 32);
    v120 = *(v119 + 23);
    v121 = v120;
    v122 = *(v119 + 8);
    if ((v120 & 0x80u) == 0)
    {
      v123 = *(v119 + 23);
    }

    else
    {
      v123 = v122;
    }

    if (v123 >= 0x80)
    {
      v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123);
      v120 = *(v119 + 23);
      v122 = *(v119 + 8);
      v118 = *(this + 100);
      v121 = *(v119 + 23);
    }

    else
    {
      v124 = 1;
    }

    if (v121 < 0)
    {
      v120 = v122;
    }

    v4 += v124 + v120 + 2;
    if ((v118 & 2) == 0)
    {
LABEL_232:
      if ((v118 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_254;
    }
  }

  else if ((v118 & 2) == 0)
  {
    goto LABEL_232;
  }

  v125 = *(this + 33);
  if (!v125)
  {
    v125 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  v126 = proto::gnss::Emergency::PositionRequest::ByteSize(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
  }

  else
  {
    v128 = 1;
  }

  v4 += v127 + v128 + 2;
  v118 = *(this + 100);
  if ((v118 & 4) == 0)
  {
LABEL_233:
    if ((v118 & 8) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_258;
  }

LABEL_254:
  v129 = *(this + 76);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    v118 = *(this + 100);
  }

  else
  {
    v130 = 3;
  }

  v4 += v130;
  if ((v118 & 8) == 0)
  {
LABEL_234:
    if ((v118 & 0x10) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_264;
  }

LABEL_258:
  v131 = *(this + 34);
  if (!v131)
  {
    v131 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  v132 = proto::gnss::Emergency::GpsReferenceTime::ByteSize(v131, a2);
  v133 = v132;
  if (v132 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132);
  }

  else
  {
    v134 = 1;
  }

  v4 += v133 + v134 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x10) == 0)
  {
LABEL_235:
    if ((v118 & 0x20) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_270;
  }

LABEL_264:
  v135 = *(this + 35);
  if (!v135)
  {
    v135 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  v136 = proto::gnss::Emergency::ReferenceLocation::ByteSize(v135, a2);
  v137 = v136;
  if (v136 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
  }

  else
  {
    v138 = 1;
  }

  v4 += v137 + v138 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x20) == 0)
  {
LABEL_236:
    if ((v118 & 0x40) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_276;
  }

LABEL_270:
  v139 = *(this + 36);
  if (!v139)
  {
    v139 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  v140 = proto::gnss::Emergency::GpsNavigationModel::ByteSize(v139, a2);
  v141 = v140;
  if (v140 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140);
  }

  else
  {
    v142 = 1;
  }

  v4 += v141 + v142 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x40) == 0)
  {
LABEL_237:
    if ((v118 & 0x80) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_282;
  }

LABEL_276:
  v143 = *(this + 37);
  if (!v143)
  {
    v143 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  v144 = proto::gnss::Emergency::GpsAcqAssistance::ByteSize(v143, a2);
  v145 = v144;
  if (v144 >= 0x80)
  {
    v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144);
  }

  else
  {
    v146 = 1;
  }

  v4 += v145 + v146 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x80) != 0)
  {
LABEL_282:
    v147 = *(this + 39);
    if (!v147)
    {
      v147 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    v148 = proto::gnss::Emergency::CellFTAssistance::ByteSize(v147, a2);
    v149 = v148;
    if (v148 >= 0x80)
    {
      v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148);
    }

    else
    {
      v150 = 1;
    }

    v4 += v149 + v150 + 2;
    v118 = *(this + 100);
  }

LABEL_288:
  if ((v118 & 0xFF00) == 0)
  {
    goto LABEL_323;
  }

  if ((v118 & 0x100) == 0)
  {
    if ((v118 & 0x400) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    v155 = *(this + 43);
    if (!v155)
    {
      v155 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    v156 = proto::gnss::Emergency::LocationId::ByteSize(v155, a2);
    v157 = v156;
    if (v156 >= 0x80)
    {
      v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156);
    }

    else
    {
      v158 = 1;
    }

    v4 += v157 + v158 + 2;
    v118 = *(this + 100);
    if ((v118 & 0x800) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_305;
  }

  v151 = *(this + 40);
  if (!v151)
  {
    v151 = *(proto::gpsd::Request::default_instance_ + 320);
  }

  v152 = proto::gnss::Emergency::CplaneContext::ByteSize(v151);
  v153 = v152;
  if (v152 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152);
  }

  else
  {
    v154 = 1;
  }

  v4 += v153 + v154 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x400) != 0)
  {
    goto LABEL_299;
  }

LABEL_291:
  if ((v118 & 0x800) != 0)
  {
LABEL_305:
    v159 = *(this + 77);
    if (v159 >= 0x80)
    {
      v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
      v118 = *(this + 100);
    }

    else
    {
      v160 = 3;
    }

    v4 += v160;
  }

LABEL_309:
  if ((v118 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v118 & 0x4000) != 0)
  {
    v161 = *(this + 93);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
      v118 = *(this + 100);
    }

    else
    {
      v162 = 3;
    }

    v4 += v162;
  }

  if ((v118 & 0x8000) != 0)
  {
    v163 = *(this + 47);
    if (!v163)
    {
      v163 = *(proto::gpsd::Request::default_instance_ + 376);
    }

    v164 = proto::gnss::Emergency::SuplContext::ByteSize(v163, a2);
    v165 = v164;
    if (v164 >= 0x80)
    {
      v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164);
    }

    else
    {
      v166 = 1;
    }

    v4 += v165 + v166 + 2;
    v118 = *(this + 100);
  }

LABEL_323:
  if ((v118 & 0x10000) != 0)
  {
    v167 = *(this + 48);
    if (!v167)
    {
      v167 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    v168 = proto::gnss::Emergency::WlanMeasurementList::ByteSize(v167, a2);
    v169 = v168;
    if (v168 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168);
    }

    else
    {
      v170 = 1;
    }

    v4 += v169 + v170 + 2;
  }

  v171 = *(this + 84);
  if (v171 < 1)
  {
    v173 = 0;
  }

  else
  {
    v172 = 0;
    v173 = 0;
    do
    {
      v174 = *(*(this + 41) + 4 * v172);
      if (v174 >= 0x80)
      {
        v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174);
        v171 = *(this + 84);
      }

      else
      {
        v175 = 1;
      }

      v173 += v175;
      ++v172;
    }

    while (v172 < v171);
  }

  v176 = *(this + 90);
  if (v176 < 1)
  {
    v178 = 0;
  }

  else
  {
    v177 = 0;
    v178 = 0;
    do
    {
      v179 = *(*(this + 44) + 4 * v177);
      if (v179 >= 0x80)
      {
        v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179);
        v176 = *(this + 90);
      }

      else
      {
        v180 = 1;
      }

      v178 += v180;
      ++v177;
    }

    while (v177 < v176);
  }

  result = (v173 + v4 + v178 + 2 * (v176 + v171));
  *(this + 98) = result;
  return result;
}

void proto::gpsd::Request::CheckTypeAndMergeFrom(proto::gpsd::Request *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Request::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::MergeFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
      }

      proto::gnss::Position::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 4)
      {
        __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9430, "::proto::gnss::PositionAssistType_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      *(this + 9) |= 4u;
      *(this + 20) = v8;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 9) |= 8u;
      *(this + 3) = v9;
    }
  }
}

void sub_24554C730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceTime::MergeFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = v5;
  }
}

void sub_24554C81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistancePressure::MergeFrom(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      proto::gnss::RawPressureSample::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_24554C9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::MergeFrom(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_24554CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceGyro::MergeFrom(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_24554CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceDem::MergeFrom(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_24554CC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMapVector::MergeFrom(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 19) |= 2u;
  *(this + 2) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 19) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 64);
  *(this + 19) |= 8u;
  *(this + 64) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v12 = *(a2 + 5);
    *(this + 19) |= 0x20u;
    *(this + 5) = v12;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v11 = *(a2 + 4);
  *(this + 19) |= 0x10u;
  *(this + 4) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = *(a2 + 6);
  *(this + 19) |= 0x40u;
  *(this + 6) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 65);
    *(this + 19) |= 0x100u;
    *(this + 65) = v14;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 66);
  *(this + 19) |= 0x200u;
  *(this + 66) = v15;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 67);
  *(this + 19) |= 0x400u;
  *(this + 67) = v16;
  v4 = *(a2 + 19);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  v17 = *(a2 + 68);
  *(this + 19) |= 0x800u;
  *(this + 68) = v17;
  if ((*(a2 + 19) & 0x1000) == 0)
  {
    return;
  }

LABEL_19:
  v6 = *(a2 + 69);
  *(this + 19) |= 0x1000u;
  *(this + 69) = v6;
}

void sub_24554CE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if (v6 >= 0xA)
      {
        __assert_rtn("set_context", "GpsdProtocol.pb.h", 10092, "::proto::gnss::MotionActivityContext_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 5)
      {
        __assert_rtn("set_moving_state", "GpsdProtocol.pb.h", 10115, "::proto::gnss::MovingState_IsValid(value)");
      }

      *(this + 8) |= 4u;
      *(this + 5) = v7;
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 6);
      if (!proto::gnss::Reliability_IsValid(v8))
      {
        __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10138, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 8) |= 8u;
      *(this + 6) = v8;
    }
  }
}

void sub_24554CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMountState::MergeFrom(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10187, "::proto::gnss::DeviceMountState_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_24554D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 7 && v4 != 15)
    {
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_24554D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_24554D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_24554D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceFile::MergeFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 3)
      {
        __assert_rtn("set_compression_type", "GpsdProtocol.pb.h", 9161, "::proto::gpsd::CompressionType_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GpsdProtocol.pb.h", 9184, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v8;
    }
  }
}

void sub_24554D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRtiFile::MergeFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::MergeFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      proto::gnss::SvId::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_24554D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::DeleteGnssData::MergeFrom(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_24554D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetPvtmReport::MergeFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 5);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 5) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 5);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v10;
    if ((*(a2 + 5) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 13);
    *(this + 5) |= 0x20u;
    *(this + 13) = v5;
  }
}

void sub_24554D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetNmeaHandler::MergeFrom(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_24554DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigSimulatorMode::MergeFrom(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24554DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24554DBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigDutyCycling::MergeFrom(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_24554DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::TerminationImminent::MergeFrom(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554DD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::ExitMessage::MergeFrom(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo::MergeFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 56))
  {
    v5 = *(a2 + 8);
    *(this + 14) |= 1u;
    *(this + 8) = v5;
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 14) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 12);
  if (v7 >= 5)
  {
    __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11634, "::proto::gpsd::LtlInfoType_IsValid(value)");
  }

  *(this + 14) |= 4u;
  *(this + 12) = v7;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    *(this + 14) |= 0x10u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
    }

    proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(v10, v11);
    v4 = *(a2 + 14);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_16:
  *(this + 14) |= 8u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(v8, v9);
  v4 = *(a2 + 14);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  *(this + 14) |= 0x20u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(v12, v13);
  if ((*(a2 + 14) & 0x40) != 0)
  {
LABEL_31:
    *(this + 14) |= 0x40u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(v14, v15);
  }
}