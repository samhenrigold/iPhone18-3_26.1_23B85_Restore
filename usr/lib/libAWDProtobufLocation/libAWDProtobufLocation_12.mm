float awd::metrics::BaroAltitudeCalibrationInfo::CheckTypeAndMergeFrom(awd::metrics::BaroAltitudeCalibrationInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BaroAltitudeCalibrationInfo::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(this, lpsrc);
}

float awd::metrics::BaroAltitudeCalibrationInfo::CopyFrom(awd::metrics::BaroAltitudeCalibrationInfo *this, const awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::BaroAltitudeCalibrationInfo::Swap(awd::metrics::BaroAltitudeCalibrationInfo *this, awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    result = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = result;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  if (v2 >= *(this + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a2);
  }

  v3 = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a2);
  }

  *a2 = v3;
  *(this + 1) = v2 + 1;
  return 1;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296471F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29647212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964721C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964722E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29647237C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964724A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964725CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964726F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29647281C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964728B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964729D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296472DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31CE8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationBatteryState::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationSubHarvesterUploadAttempt::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_LocationAlsCacheTiles_2eproto(awd::metrics *this)
{
  if (awd::metrics::LocationTilesUsage::default_instance_)
  {
    (*(*awd::metrics::LocationTilesUsage::default_instance_ + 8))(awd::metrics::LocationTilesUsage::default_instance_);
  }

  if (awd::metrics::LocationALSCacheUsage::default_instance_)
  {
    (*(*awd::metrics::LocationALSCacheUsage::default_instance_ + 8))(awd::metrics::LocationALSCacheUsage::default_instance_);
  }

  if (awd::metrics::LocationALSNetworkUsage::default_instance_)
  {
    (*(*awd::metrics::LocationALSNetworkUsage::default_instance_ + 8))(awd::metrics::LocationALSNetworkUsage::default_instance_);
  }

  if (awd::metrics::LocationSessionDay::default_instance_)
  {
    (*(*awd::metrics::LocationSessionDay::default_instance_ + 8))(awd::metrics::LocationSessionDay::default_instance_);
  }

  if (awd::metrics::LocationTileFileUsage::default_instance_)
  {
    (*(*awd::metrics::LocationTileFileUsage::default_instance_ + 8))(awd::metrics::LocationTileFileUsage::default_instance_);
  }

  if (awd::metrics::LocationTileFile::default_instance_)
  {
    (*(*awd::metrics::LocationTileFile::default_instance_ + 8))(awd::metrics::LocationTileFile::default_instance_);
  }

  if (awd::metrics::LocationWifiAPLocationProviderSession::default_instance_)
  {
    (*(*awd::metrics::LocationWifiAPLocationProviderSession::default_instance_ + 8))(awd::metrics::LocationWifiAPLocationProviderSession::default_instance_);
  }

  result = awd::metrics::LocationWifiTileSync::default_instance_;
  if (awd::metrics::LocationWifiTileSync::default_instance_)
  {
    v2 = *(*awd::metrics::LocationWifiTileSync::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/LocationAlsCacheTiles.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::LocationTilesUsage::LocationTilesUsage(uint64_t this)
{
  *this = &unk_2A1D51D68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2A1D51D68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

double awd::metrics::LocationALSCacheUsage::LocationALSCacheUsage(awd::metrics::LocationALSCacheUsage *this)
{
  *this = &unk_2A1D51DE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2A1D51DE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double awd::metrics::LocationALSNetworkUsage::LocationALSNetworkUsage(awd::metrics::LocationALSNetworkUsage *this)
{
  *this = &unk_2A1D51E58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_2A1D51E58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double awd::metrics::LocationSessionDay::LocationSessionDay(awd::metrics::LocationSessionDay *this)
{
  *this = &unk_2A1D51ED0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

{
  *this = &unk_2A1D51ED0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

double awd::metrics::LocationTileFileUsage::LocationTileFileUsage(awd::metrics::LocationTileFileUsage *this)
{
  *this = &unk_2A1D51F48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

{
  *this = &unk_2A1D51F48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

uint64_t awd::metrics::LocationTileFile::LocationTileFile(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1D51FC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1D51FC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::LocationWifiAPLocationProviderSession(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *this = &unk_2A1D52038;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *this = &unk_2A1D52038;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::LocationWifiTileSync::LocationWifiTileSync(awd::metrics::LocationWifiTileSync *this)
{
  *this = &unk_2A1D520B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2A1D520B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void awd::metrics::LocationSessionDay::InitAsDefaultInstance(awd::metrics::LocationSessionDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::metrics::LocationTilesUsage::default_instance_;
  if (!awd::metrics::LocationTilesUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(this, a2, a3, a4);
    v5 = awd::metrics::LocationTilesUsage::default_instance_;
  }

  *(this + 6) = v5;
  v6 = awd::metrics::LocationALSCacheUsage::default_instance_;
  if (!awd::metrics::LocationALSCacheUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(this, a2, a3, a4);
    v6 = awd::metrics::LocationALSCacheUsage::default_instance_;
  }

  *(this + 7) = v6;
  v7 = awd::metrics::LocationALSNetworkUsage::default_instance_;
  if (!awd::metrics::LocationALSNetworkUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(this, a2, a3, a4);
    v7 = awd::metrics::LocationALSNetworkUsage::default_instance_;
  }

  *(this + 8) = v7;
}

uint64_t awd::metrics::LocationTilesUsage::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationTilesUsage *awd::metrics::LocationTilesUsage::LocationTilesUsage(awd::metrics::LocationTilesUsage *this, const awd::metrics::LocationTilesUsage *a2)
{
  *this = &unk_2A1D51D68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  awd::metrics::LocationTilesUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationTilesUsage::MergeFrom(awd::metrics::LocationTilesUsage *this, const awd::metrics::LocationTilesUsage *a2)
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
    v4 = *(a2 + 2);
    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_296477664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationTilesUsage::~LocationTilesUsage(awd::metrics::LocationTilesUsage *this)
{
  *this = &unk_2A1D51D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationTilesUsage::default_instance(awd::metrics::LocationTilesUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationTilesUsage::default_instance_;
  if (!awd::metrics::LocationTilesUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationTilesUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationTilesUsage::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::LocationTilesUsage::MergePartialFromCodedStream(awd::metrics::LocationTilesUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::LocationTilesUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationTilesUsage::ByteSize(awd::metrics::LocationTilesUsage *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void awd::metrics::LocationTilesUsage::CheckTypeAndMergeFrom(awd::metrics::LocationTilesUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationTilesUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationTilesUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationTilesUsage::CopyFrom(awd::metrics::LocationTilesUsage *this, const awd::metrics::LocationTilesUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationTilesUsage::MergeFrom(this, a2);
  }
}

awd::metrics::LocationTilesUsage *awd::metrics::LocationTilesUsage::Swap(awd::metrics::LocationTilesUsage *this, awd::metrics::LocationTilesUsage *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

double awd::metrics::LocationALSCacheUsage::SharedCtor(awd::metrics::LocationALSCacheUsage *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationALSCacheUsage *awd::metrics::LocationALSCacheUsage::LocationALSCacheUsage(awd::metrics::LocationALSCacheUsage *this, const awd::metrics::LocationALSCacheUsage *a2)
{
  *this = &unk_2A1D51DE0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::LocationALSCacheUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationALSCacheUsage::MergeFrom(awd::metrics::LocationALSCacheUsage *this, const awd::metrics::LocationALSCacheUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 2);
      *(this + 11) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 11) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 4);
    *(this + 11) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 5);
    *(this + 11) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 6);
    *(this + 11) |= 0x10u;
    *(this + 6) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 7);
    *(this + 11) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 11);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 8);
    *(this + 11) |= 0x40u;
    *(this + 8) = v12;
    if ((*(a2 + 11) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x80u;
    *(this + 9) = v5;
  }
}

void sub_296477C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationALSCacheUsage::~LocationALSCacheUsage(awd::metrics::LocationALSCacheUsage *this)
{
  *this = &unk_2A1D51DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationALSCacheUsage::default_instance(awd::metrics::LocationALSCacheUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationALSCacheUsage::default_instance_;
  if (!awd::metrics::LocationALSCacheUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationALSCacheUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationALSCacheUsage::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::LocationALSCacheUsage::MergePartialFromCodedStream(awd::metrics::LocationALSCacheUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 >= v8 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 11) |= 1u;
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v19;
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 11) |= 2u;
        if (v20 < v8 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(a2 + 1) = v17;
LABEL_51:
          if (v17 >= v8 || (v21 = *v17, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v21;
            v22 = v17 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 11) |= 4u;
          if (v22 < v8 && *v22 == 32)
          {
            v11 = v22 + 1;
            *(a2 + 1) = v11;
LABEL_59:
            if (v11 >= v8 || (v23 = *v11, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v23;
              v24 = v11 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 11) |= 8u;
            if (v24 < v8 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(a2 + 1) = v16;
LABEL_67:
              if (v16 >= v8 || (v25 = *v16, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v25;
                v26 = v16 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 11) |= 0x10u;
              if (v26 < v8 && *v26 == 48)
              {
                v10 = v26 + 1;
                *(a2 + 1) = v10;
LABEL_75:
                if (v10 >= v8 || (v27 = *v10, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v27;
                  v28 = v10 + 1;
                  *(a2 + 1) = v28;
                }

                *(this + 11) |= 0x20u;
                if (v28 < v8 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(a2 + 1) = v18;
LABEL_83:
                  if (v18 >= v8 || (v29 = *v18, v29 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                    if (!result)
                    {
                      return result;
                    }

                    v30 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 8) = v29;
                    v30 = v18 + 1;
                    *(a2 + 1) = v30;
                  }

                  *(this + 11) |= 0x40u;
                  if (v30 < v8 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(a2 + 1) = v12;
LABEL_91:
                    if (v12 >= v8 || (v31 = *v12, v31 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                      if (!result)
                      {
                        return result;
                      }

                      v32 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 9) = v31;
                      v32 = v12 + 1;
                      *(a2 + 1) = v32;
                    }

                    *(this + 11) |= 0x80u;
                    if (v32 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *awd::metrics::LocationALSCacheUsage::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[11];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[11];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[11];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[11];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
    if ((v5[11] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v7, a2, a4);
}

uint64_t awd::metrics::LocationALSCacheUsage::ByteSize(awd::metrics::LocationALSCacheUsage *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(this + 44))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 11);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_45:
  *(this + 10) = v4;
  return v4;
}

void awd::metrics::LocationALSCacheUsage::CheckTypeAndMergeFrom(awd::metrics::LocationALSCacheUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationALSCacheUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationALSCacheUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationALSCacheUsage::CopyFrom(awd::metrics::LocationALSCacheUsage *this, const awd::metrics::LocationALSCacheUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationALSCacheUsage::MergeFrom(this, a2);
  }
}

awd::metrics::LocationALSCacheUsage *awd::metrics::LocationALSCacheUsage::Swap(awd::metrics::LocationALSCacheUsage *this, awd::metrics::LocationALSCacheUsage *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v11;
  }

  return this;
}

double awd::metrics::LocationALSNetworkUsage::SharedCtor(awd::metrics::LocationALSNetworkUsage *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationALSNetworkUsage *awd::metrics::LocationALSNetworkUsage::LocationALSNetworkUsage(awd::metrics::LocationALSNetworkUsage *this, const awd::metrics::LocationALSNetworkUsage *a2)
{
  *this = &unk_2A1D51E58;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  awd::metrics::LocationALSNetworkUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationALSNetworkUsage::MergeFrom(awd::metrics::LocationALSNetworkUsage *this, const awd::metrics::LocationALSNetworkUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 17);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 5);
  *(this + 17) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v12 = *(a2 + 7);
    *(this + 17) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 6);
  *(this + 17) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v13 = *(a2 + 8);
  *(this + 17) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 17) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 17);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 10);
    *(this + 17) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(a2 + 17);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 11);
  *(this + 17) |= 0x200u;
  *(this + 11) = v15;
  v4 = *(a2 + 17);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 12);
  *(this + 17) |= 0x400u;
  *(this + 12) = v16;
  v4 = *(a2 + 17);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 13);
  *(this + 17) |= 0x800u;
  *(this + 13) = v17;
  v4 = *(a2 + 17);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_34:
  v18 = *(a2 + 14);
  *(this + 17) |= 0x1000u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 15);
  *(this + 17) |= 0x2000u;
  *(this + 15) = v6;
}

void sub_296478978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationALSNetworkUsage::~LocationALSNetworkUsage(awd::metrics::LocationALSNetworkUsage *this)
{
  *this = &unk_2A1D51E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationALSNetworkUsage::default_instance(awd::metrics::LocationALSNetworkUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationALSNetworkUsage::default_instance_;
  if (!awd::metrics::LocationALSNetworkUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationALSNetworkUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationALSNetworkUsage::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::LocationALSNetworkUsage::MergePartialFromCodedStream(awd::metrics::LocationALSNetworkUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 2) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_42:
            *(this + 17) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
              goto LABEL_45;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_42;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_45:
        if (v18 >= v7 || (v24 = *v18, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v24;
          v25 = v18 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 17) |= 2u;
        if (v25 >= v7 || *v25 != 24)
        {
          continue;
        }

        v15 = v25 + 1;
        *(a2 + 1) = v15;
LABEL_53:
        if (v15 >= v7 || (v26 = *v15, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v26;
          v27 = v15 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 17) |= 4u;
        if (v27 >= v7 || *v27 != 32)
        {
          continue;
        }

        v16 = v27 + 1;
        *(a2 + 1) = v16;
LABEL_61:
        if (v16 >= v7 || (v28 = *v16, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v28;
          v29 = v16 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 17) |= 8u;
        if (v29 >= v7 || *v29 != 40)
        {
          continue;
        }

        v12 = v29 + 1;
        *(a2 + 1) = v12;
LABEL_69:
        if (v12 >= v7 || (v30 = *v12, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v30;
          v31 = v12 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 17) |= 0x10u;
        if (v31 >= v7 || *v31 != 48)
        {
          continue;
        }

        v19 = v31 + 1;
        *(a2 + 1) = v19;
LABEL_77:
        if (v19 >= v7 || (v32 = *v19, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v32;
          v33 = v19 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 17) |= 0x20u;
        if (v33 >= v7 || *v33 != 56)
        {
          continue;
        }

        v21 = v33 + 1;
        *(a2 + 1) = v21;
LABEL_85:
        if (v21 >= v7 || (v34 = *v21, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v21 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 17) |= 0x40u;
        if (v35 >= v7 || *v35 != 64)
        {
          continue;
        }

        v17 = v35 + 1;
        *(a2 + 1) = v17;
LABEL_93:
        if (v17 >= v7 || (v36 = *v17, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v36;
          v37 = v17 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 17) |= 0x80u;
        if (v37 >= v7 || *v37 != 72)
        {
          continue;
        }

        v23 = v37 + 1;
        *(a2 + 1) = v23;
LABEL_101:
        if (v23 >= v7 || (v38 = *v23, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v38;
          v39 = v23 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 17) |= 0x100u;
        if (v39 >= v7 || *v39 != 80)
        {
          continue;
        }

        v14 = v39 + 1;
        *(a2 + 1) = v14;
LABEL_109:
        if (v14 >= v7 || (v40 = *v14, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v40;
          v41 = v14 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 17) |= 0x200u;
        if (v41 >= v7 || *v41 != 88)
        {
          continue;
        }

        v22 = v41 + 1;
        *(a2 + 1) = v22;
LABEL_117:
        if (v22 >= v7 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 17) |= 0x400u;
        if (v43 >= v7 || *v43 != 96)
        {
          continue;
        }

        v11 = v43 + 1;
        *(a2 + 1) = v11;
LABEL_125:
        if (v11 >= v7 || (v44 = *v11, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v44;
          v45 = v11 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 17) |= 0x800u;
        if (v45 >= v7 || *v45 != 104)
        {
          continue;
        }

        v13 = v45 + 1;
        *(a2 + 1) = v13;
LABEL_133:
        if (v13 >= v7 || (v46 = *v13, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v46;
          v47 = v13 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 17) |= 0x1000u;
        if (v47 >= v7 || *v47 != 112)
        {
          continue;
        }

        v20 = v47 + 1;
        *(a2 + 1) = v20;
LABEL_141:
        if (v20 >= v7 || (v48 = *v20, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v48;
          v49 = v20 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 17) |= 0x2000u;
        if (v49 != v7 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_117;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_125;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_133;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_141;
      default:
LABEL_36:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *awd::metrics::LocationALSNetworkUsage::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[17];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[17];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[17];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[17];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[14], a2, a4);
    if ((v5[17] & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = v5[15];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v7, a2, a4);
}

uint64_t awd::metrics::LocationALSNetworkUsage::ByteSize(awd::metrics::LocationALSNetworkUsage *this, unsigned int a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 17);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_77;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_61:
  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_69;
  }

LABEL_65:
  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_73;
  }

LABEL_69:
  v28 = *(this + 14);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x2000) != 0)
  {
LABEL_73:
    v30 = *(this + 15);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    }

    else
    {
      v31 = 2;
    }

    v4 = (v31 + v4);
  }

LABEL_77:
  *(this + 16) = v4;
  return v4;
}

void awd::metrics::LocationALSNetworkUsage::CheckTypeAndMergeFrom(awd::metrics::LocationALSNetworkUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationALSNetworkUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationALSNetworkUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationALSNetworkUsage::CopyFrom(awd::metrics::LocationALSNetworkUsage *this, const awd::metrics::LocationALSNetworkUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationALSNetworkUsage::MergeFrom(this, a2);
  }
}

awd::metrics::LocationALSNetworkUsage *awd::metrics::LocationALSNetworkUsage::Swap(awd::metrics::LocationALSNetworkUsage *this, awd::metrics::LocationALSNetworkUsage *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v16;
    v17 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v17;
  }

  return this;
}

double awd::metrics::LocationSessionDay::SharedCtor(awd::metrics::LocationSessionDay *this)
{
  result = 0.0;
  *(this + 68) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationSessionDay *awd::metrics::LocationSessionDay::LocationSessionDay(awd::metrics::LocationSessionDay *this, const awd::metrics::LocationSessionDay *a2)
{
  *this = &unk_2A1D51ED0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  awd::metrics::LocationSessionDay::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationSessionDay::MergeFrom(awd::metrics::LocationSessionDay *this, const awd::metrics::LocationSessionDay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = *(a2 + 2);
    *(this + 20) |= 1u;
    *(this + 2) = v6;
    v4 = *(a2 + 20);
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

  v7 = *(a2 + 3);
  *(this + 20) |= 2u;
  *(this + 3) = v7;
  v4 = *(a2 + 20);
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
  v8 = *(a2 + 4);
  *(this + 20) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 20);
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
  v9 = *(a2 + 5);
  *(this + 20) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v11 = *(a2 + 7);
    *(this + 20) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 20);
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
  v10 = *(a2 + 6);
  *(this + 20) |= 0x10u;
  *(this + 6) = v10;
  v4 = *(a2 + 20);
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
  v12 = *(a2 + 8);
  *(this + 20) |= 0x40u;
  *(this + 8) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 20) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 20);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 10);
    *(this + 20) |= 0x100u;
    *(this + 10) = v13;
    v4 = *(a2 + 20);
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

  v14 = *(a2 + 11);
  *(this + 20) |= 0x200u;
  *(this + 11) = v14;
  v4 = *(a2 + 20);
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
  v15 = *(a2 + 18);
  *(this + 20) |= 0x400u;
  *(this + 18) = v15;
  v4 = *(a2 + 20);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_32:
  *(this + 20) |= 0x800u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(awd::metrics::LocationSessionDay::default_instance_ + 48);
  }

  awd::metrics::LocationTilesUsage::MergeFrom(v16, v17);
  v4 = *(a2 + 20);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_37:
  *(this + 20) |= 0x1000u;
  v18 = *(this + 7);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 7);
  if (!v19)
  {
    v19 = *(awd::metrics::LocationSessionDay::default_instance_ + 56);
  }

  awd::metrics::LocationALSCacheUsage::MergeFrom(v18, v19);
  if ((*(a2 + 20) & 0x2000) != 0)
  {
LABEL_42:
    *(this + 20) |= 0x2000u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      v21 = *(awd::metrics::LocationSessionDay::default_instance_ + 64);
    }

    awd::metrics::LocationALSNetworkUsage::MergeFrom(v20, v21);
  }
}

void sub_296479C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSessionDay::~LocationSessionDay(awd::metrics::LocationSessionDay *this)
{
  *this = &unk_2A1D51ED0;
  awd::metrics::LocationSessionDay::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51ED0;
  awd::metrics::LocationSessionDay::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51ED0;
  awd::metrics::LocationSessionDay::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationSessionDay::SharedDtor(void *this)
{
  if (awd::metrics::LocationSessionDay::default_instance_ != this)
  {
    v1 = this;
    v2 = this[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[8];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationSessionDay::default_instance(awd::metrics::LocationSessionDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationSessionDay::default_instance_;
  if (!awd::metrics::LocationSessionDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationSessionDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationSessionDay::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x800) != 0)
    {
      v2 = *(this + 48);
      if (v2)
      {
        if (*(v2 + 16))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 16) = 0;
        v1 = *(this + 80);
      }
    }

    if ((v1 & 0x1000) != 0)
    {
      v3 = *(this + 56);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 44) = 0;
        v1 = *(this + 80);
      }
    }

    if ((v1 & 0x2000) != 0)
    {
      v4 = *(this + 64);
      if (v4)
      {
        v5 = *(v4 + 68);
        if (v5)
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 40) = 0;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
        }

        *(v4 + 68) = 0;
      }
    }
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::LocationSessionDay::MergePartialFromCodedStream(awd::metrics::LocationSessionDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 20) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v17 = v11 + 1;
          *(a2 + 1) = v17;
          goto LABEL_45;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_45:
        if (v17 >= v8 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 20) |= 2u;
        if (v26 >= v8 || *v26 != 24)
        {
          continue;
        }

        v14 = v26 + 1;
        *(a2 + 1) = v14;
LABEL_53:
        if (v14 >= v8 || (v27 = *v14, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v27;
          v28 = v14 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 20) |= 4u;
        if (v28 >= v8 || *v28 != 32)
        {
          continue;
        }

        v15 = v28 + 1;
        *(a2 + 1) = v15;
LABEL_61:
        if (v15 >= v8 || (v29 = *v15, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v29;
          v30 = v15 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 20) |= 0x10u;
        if (v30 >= v8 || *v30 != 40)
        {
          continue;
        }

        v12 = v30 + 1;
        *(a2 + 1) = v12;
LABEL_69:
        if (v12 >= v8 || (v31 = *v12, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v31;
          v32 = v12 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 20) |= 0x20u;
        if (v32 >= v8 || *v32 != 48)
        {
          continue;
        }

        v18 = v32 + 1;
        *(a2 + 1) = v18;
LABEL_77:
        if (v18 >= v8 || (v33 = *v18, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v33;
          v34 = v18 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 20) |= 0x40u;
        if (v34 >= v8 || *v34 != 56)
        {
          continue;
        }

        v21 = v34 + 1;
        *(a2 + 1) = v21;
LABEL_85:
        if (v21 >= v8 || (v35 = *v21, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v35;
          v36 = v21 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 20) |= 0x80u;
        if (v36 >= v8 || *v36 != 64)
        {
          continue;
        }

        v16 = v36 + 1;
        *(a2 + 1) = v16;
LABEL_93:
        if (v16 >= v8 || (v37 = *v16, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v37;
          v38 = v16 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 20) |= 0x100u;
        if (v38 >= v8 || *v38 != 72)
        {
          continue;
        }

        v23 = v38 + 1;
        *(a2 + 1) = v23;
LABEL_101:
        if (v23 >= v8 || (v39 = *v23, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v39;
          v40 = v23 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 20) |= 0x200u;
        if (v40 >= v8 || *v40 != 80)
        {
          continue;
        }

        v13 = v40 + 1;
        *(a2 + 1) = v13;
LABEL_109:
        if (v13 >= v8 || (v41 = *v13, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v41;
          v42 = v13 + 1;
          *(a2 + 1) = v42;
        }

        v22 = *(this + 20) | 0x400;
        *(this + 20) = v22;
        if (v42 >= v8 || *v42 != 90)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_117:
        *(this + 20) = v22 | 0x800;
        v43 = *(this + 6);
        if (!v43)
        {
          operator new();
        }

        v70 = 0;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
          {
            return 0;
          }
        }

        else
        {
          v70 = *v44;
          *(a2 + 1) = v44 + 1;
        }

        v45 = *(a2 + 14);
        v46 = *(a2 + 15);
        *(a2 + 14) = v45 + 1;
        if (v45 >= v46)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationTilesUsage::MergePartialFromCodedStream(v43, a2, v47) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v48 = *(a2 + 14);
        v49 = __OFSUB__(v48, 1);
        v50 = v48 - 1;
        if (v50 < 0 == v49)
        {
          *(a2 + 14) = v50;
        }

        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 != 98)
        {
          continue;
        }

        *(a2 + 1) = v51 + 1;
LABEL_131:
        *(this + 20) |= 0x1000u;
        v52 = *(this + 7);
        if (!v52)
        {
          operator new();
        }

        v71 = 0;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71))
          {
            return 0;
          }
        }

        else
        {
          v71 = *v53;
          *(a2 + 1) = v53 + 1;
        }

        v54 = *(a2 + 14);
        v55 = *(a2 + 15);
        *(a2 + 14) = v54 + 1;
        if (v54 >= v55)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationALSCacheUsage::MergePartialFromCodedStream(v52, a2, v56) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v49 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v49)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 106)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_145:
        *(this + 20) |= 0x2000u;
        v60 = *(this + 8);
        if (!v60)
        {
          operator new();
        }

        v72 = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
          {
            return 0;
          }
        }

        else
        {
          v72 = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 < v63)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationALSNetworkUsage::MergePartialFromCodedStream(v60, a2, v64))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v65 = *(a2 + 14);
              v49 = __OFSUB__(v65, 1);
              v66 = v65 - 1;
              if (v66 < 0 == v49)
              {
                *(a2 + 14) = v66;
              }

              v67 = *(a2 + 1);
              v19 = *(a2 + 2);
              if (v67 < v19 && *v67 == 112)
              {
                v20 = v67 + 1;
                *(a2 + 1) = v20;
LABEL_159:
                if (v20 >= v19 || (v68 = *v20, v68 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v69 = *(a2 + 1);
                  v19 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v68;
                  v69 = v20 + 1;
                  *(a2 + 1) = v69;
                }

                *(this + 20) |= 8u;
                if (v69 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_36;
        }

        v22 = *(this + 20);
        goto LABEL_117;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_131;
        }

        goto LABEL_36;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_145;
        }

        goto LABEL_36;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_159;
      default:
LABEL_36:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::LocationSessionDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_26:
  v7 = *(v5 + 48);
  if (!v7)
  {
    v7 = *(awd::metrics::LocationSessionDay::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v7, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_29:
  v8 = *(v5 + 56);
  if (!v8)
  {
    v8 = *(awd::metrics::LocationSessionDay::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v8, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_32:
  v9 = *(v5 + 64);
  if (!v9)
  {
    v9 = *(awd::metrics::LocationSessionDay::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v9, a2, a4);
  if ((*(v5 + 80) & 8) != 0)
  {
LABEL_35:
    v10 = *(v5 + 20);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v10, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationSessionDay::ByteSize(awd::metrics::LocationSessionDay *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 20);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_61:
  v24 = *(this + 18);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_74;
  }

LABEL_65:
  v26 = *(this + 6);
  if (!v26)
  {
    v26 = *(awd::metrics::LocationSessionDay::default_instance_ + 48);
  }

  if ((*(v26 + 16) & 1) == 0)
  {
    v27 = 0;
LABEL_71:
    *(v26 + 12) = v27;
LABEL_72:
    v29 = 1;
    goto LABEL_73;
  }

  v28 = *(v26 + 8);
  if (v28 <= 0x7F)
  {
    v27 = 2;
    goto LABEL_71;
  }

  v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
  v27 = v39 + 1;
  *(v26 + 12) = v39 + 1;
  if ((v39 + 1) < 0x80)
  {
    goto LABEL_72;
  }

  v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v39 + 1));
LABEL_73:
  v4 = (v4 + v27 + v29 + 1);
  v3 = *(this + 20);
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_80;
  }

LABEL_74:
  v30 = *(this + 7);
  if (!v30)
  {
    v30 = *(awd::metrics::LocationSessionDay::default_instance_ + 56);
  }

  v31 = awd::metrics::LocationALSCacheUsage::ByteSize(v30, a2);
  v32 = v31;
  if (v31 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
  }

  else
  {
    v33 = 1;
  }

  v4 = (v4 + v32 + v33 + 1);
  if ((*(this + 20) & 0x2000) != 0)
  {
LABEL_80:
    v34 = *(this + 8);
    if (!v34)
    {
      v34 = *(awd::metrics::LocationSessionDay::default_instance_ + 64);
    }

    v35 = awd::metrics::LocationALSNetworkUsage::ByteSize(v34, a2);
    v36 = v35;
    if (v35 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
    }

    else
    {
      v37 = 1;
    }

    v4 = (v4 + v36 + v37 + 1);
  }

LABEL_86:
  *(this + 19) = v4;
  return v4;
}

void awd::metrics::LocationSessionDay::CheckTypeAndMergeFrom(awd::metrics::LocationSessionDay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationSessionDay::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationSessionDay::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationSessionDay::CopyFrom(awd::metrics::LocationSessionDay *this, const awd::metrics::LocationSessionDay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationSessionDay::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationSessionDay::Swap(uint64_t this, awd::metrics::LocationSessionDay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v12;
    v13 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v13;
    v14 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v14;
    v15 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v15;
    LODWORD(v15) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v15;
    LODWORD(v15) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v15;
  }

  return this;
}

double awd::metrics::LocationTileFileUsage::SharedCtor(awd::metrics::LocationTileFileUsage *this)
{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  return result;
}

awd::metrics::LocationTileFileUsage *awd::metrics::LocationTileFileUsage::LocationTileFileUsage(awd::metrics::LocationTileFileUsage *this, const awd::metrics::LocationTileFileUsage *a2)
{
  *this = &unk_2A1D51F48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  awd::metrics::LocationTileFileUsage::MergeFrom(this, a2);
  return this;
}

void sub_29647B09C(_Unwind_Exception *a1)
{
  v3 = v1[13];
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  awd::metrics::LocationTileFileUsage::LocationTileFileUsage(v1 + 10);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationTileFileUsage::MergeFrom(awd::metrics::LocationTileFileUsage *this, const awd::metrics::LocationTileFileUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 22);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 20, *(this + 22) + v4);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 26, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 35);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    v12 = *(a2 + 2);
    *(this + 35) |= 1u;
    *(this + 2) = v12;
    v6 = *(a2 + 35);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(a2 + 3);
  *(this + 35) |= 2u;
  *(this + 3) = v13;
  v6 = *(a2 + 35);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v14 = *(a2 + 4);
  *(this + 35) |= 4u;
  *(this + 4) = v14;
  v6 = *(a2 + 35);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = *(a2 + 5);
  *(this + 35) |= 8u;
  *(this + 5) = v15;
  v6 = *(a2 + 35);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_46:
    v17 = *(a2 + 7);
    *(this + 35) |= 0x20u;
    *(this + 7) = v17;
    v6 = *(a2 + 35);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_45:
  v16 = *(a2 + 6);
  *(this + 35) |= 0x10u;
  *(this + 6) = v16;
  v6 = *(a2 + 35);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_47:
  v18 = *(a2 + 8);
  *(this + 35) |= 0x40u;
  *(this + 8) = v18;
  v6 = *(a2 + 35);
  if ((v6 & 0x80) != 0)
  {
LABEL_16:
    v7 = *(a2 + 9);
    *(this + 35) |= 0x80u;
    *(this + 9) = v7;
    v6 = *(a2 + 35);
  }

LABEL_17:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v6 & 0x100) != 0)
  {
    v19 = *(a2 + 10);
    *(this + 35) |= 0x100u;
    *(this + 10) = v19;
    v6 = *(a2 + 35);
    if ((v6 & 0x200) == 0)
    {
LABEL_20:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v20 = *(a2 + 11);
  *(this + 35) |= 0x200u;
  *(this + 11) = v20;
  v6 = *(a2 + 35);
  if ((v6 & 0x400) == 0)
  {
LABEL_21:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = *(a2 + 12);
  *(this + 35) |= 0x400u;
  *(this + 12) = v21;
  v6 = *(a2 + 35);
  if ((v6 & 0x800) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = *(a2 + 13);
  *(this + 35) |= 0x800u;
  *(this + 13) = v22;
  v6 = *(a2 + 35);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v23 = *(a2 + 14);
  *(this + 35) |= 0x1000u;
  *(this + 14) = v23;
  v6 = *(a2 + 35);
  if ((v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v24 = *(a2 + 15);
  *(this + 35) |= 0x2000u;
  *(this + 15) = v24;
  v6 = *(a2 + 35);
  if ((v6 & 0x4000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_55:
  v25 = *(a2 + 16);
  *(this + 35) |= 0x4000u;
  *(this + 16) = v25;
  v6 = *(a2 + 35);
  if ((v6 & 0x8000) != 0)
  {
LABEL_26:
    v8 = *(a2 + 17);
    *(this + 35) |= 0x8000u;
    *(this + 17) = v8;
    v6 = *(a2 + 35);
  }

LABEL_27:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v6 & 0x10000) != 0)
  {
    v26 = *(a2 + 18);
    *(this + 35) |= 0x10000u;
    *(this + 18) = v26;
    v6 = *(a2 + 35);
    if ((v6 & 0x20000) == 0)
    {
LABEL_30:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_59;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_30;
  }

  v27 = *(a2 + 19);
  *(this + 35) |= 0x20000u;
  *(this + 19) = v27;
  v6 = *(a2 + 35);
  if ((v6 & 0x40000) == 0)
  {
LABEL_31:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 24);
  *(this + 35) |= 0x40000u;
  *(this + 24) = v28;
  v6 = *(a2 + 35);
  if ((v6 & 0x200000) == 0)
  {
LABEL_32:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 25);
  *(this + 35) |= 0x200000u;
  *(this + 25) = v29;
  v6 = *(a2 + 35);
  if ((v6 & 0x400000) == 0)
  {
LABEL_33:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_61:
  v30 = *(a2 + 30);
  *(this + 35) |= 0x400000u;
  *(this + 30) = v30;
  v6 = *(a2 + 35);
  if ((v6 & 0x800000) != 0)
  {
LABEL_34:
    v9 = *(a2 + 31);
    *(this + 35) |= 0x800000u;
    *(this + 31) = v9;
    v6 = *(a2 + 35);
  }

LABEL_35:
  if (HIBYTE(v6))
  {
    if ((v6 & 0x1000000) != 0)
    {
      v10 = *(a2 + 32);
      *(this + 35) |= 0x1000000u;
      *(this + 32) = v10;
      v6 = *(a2 + 35);
    }

    if ((v6 & 0x2000000) != 0)
    {
      v11 = *(a2 + 33);
      *(this + 35) |= 0x2000000u;
      *(this + 33) = v11;
    }
  }
}

void sub_29647B4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationTileFileUsage::~LocationTileFileUsage(awd::metrics::LocationTileFileUsage *this)
{
  *this = &unk_2A1D51F48;
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationTileFileUsage::~LocationTileFileUsage(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationTileFileUsage::default_instance(awd::metrics::LocationTileFileUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationTileFileUsage::default_instance_;
  if (!awd::metrics::LocationTileFileUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationTileFileUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationTileFileUsage::Clear(uint64_t this)
{
  v1 = *(this + 140);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 96) = 0;
    *(this + 120) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 128) = 0;
  }

  *(this + 88) = 0;
  *(this + 112) = 0;
  *(this + 140) = 0;
  return this;
}

uint64_t awd::metrics::LocationTileFileUsage::MergePartialFromCodedStream(awd::metrics::LocationTileFileUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 35) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v24 = v11 + 1;
          *(a2 + 1) = v24;
          goto LABEL_75;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_75:
        if (v24 >= v8 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v38;
          v39 = v24 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 35) |= 2u;
        if (v39 >= v8 || *v39 != 24)
        {
          continue;
        }

        v20 = v39 + 1;
        *(a2 + 1) = v20;
LABEL_83:
        if (v20 >= v8 || (v40 = *v20, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v40;
          v41 = v20 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 35) |= 4u;
        if (v41 >= v8 || *v41 != 32)
        {
          continue;
        }

        v22 = v41 + 1;
        *(a2 + 1) = v22;
LABEL_91:
        if (v22 >= v8 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 35) |= 8u;
        if (v43 >= v8 || *v43 != 40)
        {
          continue;
        }

        v15 = v43 + 1;
        *(a2 + 1) = v15;
LABEL_99:
        if (v15 >= v8 || (v44 = *v15, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v44;
          v45 = v15 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 35) |= 0x10u;
        if (v45 >= v8 || *v45 != 48)
        {
          continue;
        }

        v27 = v45 + 1;
        *(a2 + 1) = v27;
LABEL_107:
        if (v27 >= v8 || (v46 = *v27, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v46;
          v47 = v27 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 35) |= 0x20u;
        if (v47 >= v8 || *v47 != 56)
        {
          continue;
        }

        v30 = v47 + 1;
        *(a2 + 1) = v30;
LABEL_115:
        if (v30 >= v8 || (v48 = *v30, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v48;
          v49 = v30 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 35) |= 0x40u;
        if (v49 >= v8 || *v49 != 64)
        {
          continue;
        }

        v23 = v49 + 1;
        *(a2 + 1) = v23;
LABEL_123:
        if (v23 >= v8 || (v50 = *v23, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v50;
          v51 = v23 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 35) |= 0x80u;
        if (v51 >= v8 || *v51 != 72)
        {
          continue;
        }

        v33 = v51 + 1;
        *(a2 + 1) = v33;
LABEL_131:
        if (v33 >= v8 || (v52 = *v33, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v52;
          v53 = v33 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 35) |= 0x100u;
        if (v53 >= v8 || *v53 != 80)
        {
          continue;
        }

        v17 = v53 + 1;
        *(a2 + 1) = v17;
LABEL_139:
        if (v17 >= v8 || (v54 = *v17, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v54;
          v55 = v17 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 35) |= 0x200u;
        if (v55 >= v8 || *v55 != 88)
        {
          continue;
        }

        v32 = v55 + 1;
        *(a2 + 1) = v32;
LABEL_147:
        if (v32 >= v8 || (v56 = *v32, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v56;
          v57 = v32 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 35) |= 0x400u;
        if (v57 >= v8 || *v57 != 96)
        {
          continue;
        }

        v14 = v57 + 1;
        *(a2 + 1) = v14;
LABEL_155:
        if (v14 >= v8 || (v58 = *v14, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v58;
          v59 = v14 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 35) |= 0x800u;
        if (v59 >= v8 || *v59 != 104)
        {
          continue;
        }

        v16 = v59 + 1;
        *(a2 + 1) = v16;
LABEL_163:
        if (v16 >= v8 || (v60 = *v16, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v60;
          v61 = v16 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 35) |= 0x1000u;
        if (v61 >= v8 || *v61 != 112)
        {
          continue;
        }

        v29 = v61 + 1;
        *(a2 + 1) = v29;
LABEL_171:
        if (v29 >= v8 || (v62 = *v29, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v62;
          v63 = v29 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 35) |= 0x2000u;
        if (v63 >= v8 || *v63 != 120)
        {
          continue;
        }

        v13 = v63 + 1;
        *(a2 + 1) = v13;
LABEL_179:
        if (v13 >= v8 || (v64 = *v13, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v64;
          v65 = (v13 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 35) |= 0x4000u;
        if (v8 - v65 < 2 || *v65 != 128 || v65[1] != 1)
        {
          continue;
        }

        v21 = (v65 + 2);
        *(a2 + 1) = v21;
LABEL_188:
        if (v21 >= v8 || (v66 = *v21, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v66;
          v67 = (v21 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 35) |= 0x8000u;
        if (v8 - v67 < 2 || *v67 != 136 || v67[1] != 1)
        {
          continue;
        }

        v12 = (v67 + 2);
        *(a2 + 1) = v12;
LABEL_197:
        if (v12 >= v8 || (v68 = *v12, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v68;
          v69 = (v12 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 35) |= 0x10000u;
        if (v8 - v69 < 2 || *v69 != 144 || v69[1] != 1)
        {
          continue;
        }

        v25 = (v69 + 2);
        *(a2 + 1) = v25;
LABEL_206:
        if (v25 >= v8 || (v70 = *v25, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v70;
          v71 = (v25 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 35) |= 0x20000u;
        if (v8 - v71 < 2 || *v71 != 152 || v71[1] != 1)
        {
          continue;
        }

        v31 = (v71 + 2);
        *(a2 + 1) = v31;
LABEL_215:
        if (v31 >= v8 || (v72 = *v31, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v72;
          v73 = (v31 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 35) |= 0x40000u;
        if (v8 - v73 >= 2 && *v73 == 160 && v73[1] == 1)
        {
          goto LABEL_223;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_83;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_99;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_107;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_123;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_131;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_139;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_147;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_155;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_163;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_171;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_179;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_188;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_197;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_215;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_244;
          }

          goto LABEL_64;
        }

        v37 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v106[0] = 0;
          if (v37 >= v8 || (v74 = *v37, (v74 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
            if (!result)
            {
              return result;
            }

            v74 = v106[0];
          }

          else
          {
            *(a2 + 1) = v37 + 1;
          }

          v75 = *(this + 22);
          if (v75 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 20, v75 + 1);
            v75 = *(this + 22);
          }

          v76 = *(this + 10);
          *(this + 22) = v75 + 1;
          *(v76 + 4 * v75) = v74;
          v77 = *(this + 23) - *(this + 22);
          if (v77 >= 1)
          {
            v78 = v77 + 1;
            do
            {
              v79 = *(a2 + 1);
              v80 = *(a2 + 2);
              if (v80 - v79 < 2 || *v79 != 160 || v79[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v79 + 2;
              v106[0] = 0;
              if ((v79 + 2) >= v80 || (v81 = v79[2], (v81 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
                if (!result)
                {
                  return result;
                }

                v81 = v106[0];
              }

              else
              {
                *(a2 + 1) = v79 + 3;
              }

              v82 = *(this + 22);
              if (v82 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v106);
                v82 = *(this + 22);
              }

              v83 = *(this + 10);
              *(this + 22) = v82 + 1;
              *(v83 + 4 * v82) = v81;
              --v78;
            }

            while (v78 > 1);
          }

LABEL_244:
          v73 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v8 - v73 <= 1)
          {
            goto LABEL_1;
          }

          v84 = *v73;
          if (v84 == 168)
          {
            if (v73[1] != 1)
            {
              goto LABEL_1;
            }

            goto LABEL_250;
          }

          if (v84 != 160 || v73[1] != 1)
          {
            goto LABEL_1;
          }

LABEL_223:
          v37 = (v73 + 2);
          *(a2 + 1) = v37;
        }

      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v106[0] = 0;
            if (v36 >= v8 || (v85 = *v36, (v85 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
              if (!result)
              {
                return result;
              }

              v85 = v106[0];
            }

            else
            {
              *(a2 + 1) = v36 + 1;
            }

            v86 = *(this + 28);
            if (v86 == *(this + 29))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 26, v86 + 1);
              v86 = *(this + 28);
            }

            v87 = *(this + 13);
            *(this + 28) = v86 + 1;
            *(v87 + 4 * v86) = v85;
            v88 = *(this + 29) - *(this + 28);
            if (v88 >= 1)
            {
              v89 = v88 + 1;
              do
              {
                v90 = *(a2 + 1);
                v91 = *(a2 + 2);
                if (v91 - v90 < 2 || *v90 != 168 || v90[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v90 + 2;
                v106[0] = 0;
                if ((v90 + 2) >= v91 || (v92 = v90[2], (v92 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
                  if (!result)
                  {
                    return result;
                  }

                  v92 = v106[0];
                }

                else
                {
                  *(a2 + 1) = v90 + 3;
                }

                v93 = *(this + 28);
                if (v93 >= *(this + 29))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v106);
                  v93 = *(this + 28);
                }

                v94 = *(this + 13);
                *(this + 28) = v93 + 1;
                *(v94 + 4 * v93) = v92;
                --v89;
              }

              while (v89 > 1);
            }

LABEL_271:
            v73 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v8 - v73 <= 1)
            {
              goto LABEL_1;
            }

            v95 = *v73;
            if (v95 == 176)
            {
              if (v73[1] == 1)
              {
                v28 = (v73 + 2);
                *(a2 + 1) = v28;
LABEL_278:
                if (v28 >= v8 || (v96 = *v28, v96 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                  if (!result)
                  {
                    return result;
                  }

                  v97 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 25) = v96;
                  v97 = (v28 + 1);
                  *(a2 + 1) = v97;
                }

                *(this + 35) |= 0x200000u;
                if (v8 - v97 >= 2 && *v97 == 184 && v97[1] == 1)
                {
                  v34 = (v97 + 2);
                  *(a2 + 1) = v34;
LABEL_287:
                  if (v34 >= v8 || (v98 = *v34, v98 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                    if (!result)
                    {
                      return result;
                    }

                    v99 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 30) = v98;
                    v99 = (v34 + 1);
                    *(a2 + 1) = v99;
                  }

                  *(this + 35) |= 0x400000u;
                  if (v8 - v99 >= 2 && *v99 == 192 && v99[1] == 1)
                  {
                    v35 = (v99 + 2);
                    *(a2 + 1) = v35;
LABEL_296:
                    if (v35 >= v8 || (v100 = *v35, v100 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                      if (!result)
                      {
                        return result;
                      }

                      v101 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 31) = v100;
                      v101 = (v35 + 1);
                      *(a2 + 1) = v101;
                    }

                    *(this + 35) |= 0x800000u;
                    if (v8 - v101 >= 2 && *v101 == 200 && v101[1] == 1)
                    {
                      v19 = (v101 + 2);
                      *(a2 + 1) = v19;
LABEL_305:
                      if (v19 >= v8 || (v102 = *v19, v102 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                        if (!result)
                        {
                          return result;
                        }

                        v103 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 32) = v102;
                        v103 = (v19 + 1);
                        *(a2 + 1) = v103;
                      }

                      *(this + 35) |= 0x1000000u;
                      if (v8 - v103 >= 2 && *v103 == 208 && v103[1] == 1)
                      {
                        v18 = (v103 + 2);
                        *(a2 + 1) = v18;
LABEL_314:
                        if (v18 >= v8 || (v104 = *v18, v104 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                          if (!result)
                          {
                            return result;
                          }

                          v105 = *(a2 + 1);
                          v8 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 33) = v104;
                          v105 = v18 + 1;
                          *(a2 + 1) = v105;
                        }

                        *(this + 35) |= 0x2000000u;
                        if (v105 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
              }

              goto LABEL_1;
            }

            if (v95 != 168 || v73[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_250:
            v36 = (v73 + 2);
            *(a2 + 1) = v36;
          }
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 13);
          if (!result)
          {
            return result;
          }

          goto LABEL_271;
        }

LABEL_64:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_278;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_287;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v35 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_296;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_305;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_314;
      default:
        goto LABEL_64;
    }
  }
}

void sub_29647C558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::LocationTileFileUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 140);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 140);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 56), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 60), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 64), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 68), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 72), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 76), a2, a4);
  if ((*(v5 + 140) & 0x40000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
  }

LABEL_21:
  if (*(v5 + 88) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, *(*(v5 + 80) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 88));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x15, *(*(v5 + 104) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 112));
  }

  v9 = *(v5 + 140);
  if ((v9 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
    v9 = *(v5 + 140);
    if ((v9 & 0x400000) == 0)
    {
LABEL_29:
      if ((v9 & 0x800000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_54;
    }
  }

  else if ((v9 & 0x400000) == 0)
  {
    goto LABEL_29;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 120), a2, a4);
  v9 = *(v5 + 140);
  if ((v9 & 0x800000) == 0)
  {
LABEL_30:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_55:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 128), a2, a4);
    if ((*(v5 + 140) & 0x2000000) == 0)
    {
      return this;
    }

    goto LABEL_56;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 124), a2, a4);
  v9 = *(v5 + 140);
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_31:
  if ((v9 & 0x2000000) == 0)
  {
    return this;
  }

LABEL_56:
  v10 = *(v5 + 132);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v10, a2, a4);
}

uint64_t awd::metrics::LocationTileFileUsage::ByteSize(awd::metrics::LocationTileFileUsage *this, unsigned int a2)
{
  v3 = *(this + 35);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 35);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 35);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 35);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_87;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 35);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_63;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v23 = 2;
  }

  v4 += v23;
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_63:
  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v25 = 2;
  }

  v4 += v25;
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_67:
  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v27 = 2;
  }

  v4 += v27;
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_71:
  v28 = *(this + 14);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v29 = 2;
  }

  v4 += v29;
  if ((v3 & 0x2000) == 0)
  {
LABEL_52:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

LABEL_75:
  v30 = *(this + 15);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v31 = 2;
  }

  v4 += v31;
  if ((v3 & 0x4000) == 0)
  {
LABEL_53:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_83;
  }

LABEL_79:
  v32 = *(this + 16);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = *(this + 35);
  }

  else
  {
    v33 = 2;
  }

  v4 += v33;
  if ((v3 & 0x8000) != 0)
  {
LABEL_83:
    v34 = *(this + 17);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v3 = *(this + 35);
    }

    else
    {
      v35 = 3;
    }

    v4 += v35;
  }

LABEL_87:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x10000) != 0)
  {
    v36 = *(this + 18);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v3 = *(this + 35);
    }

    else
    {
      v37 = 3;
    }

    v4 += v37;
    if ((v3 & 0x20000) == 0)
    {
LABEL_90:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_103;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_90;
  }

  v38 = *(this + 19);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(this + 35);
  }

  else
  {
    v39 = 3;
  }

  v4 += v39;
  if ((v3 & 0x40000) == 0)
  {
LABEL_91:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_107;
  }

LABEL_103:
  v40 = *(this + 24);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v3 = *(this + 35);
  }

  else
  {
    v41 = 3;
  }

  v4 += v41;
  if ((v3 & 0x200000) == 0)
  {
LABEL_92:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_111;
  }

LABEL_107:
  v42 = *(this + 25);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v3 = *(this + 35);
  }

  else
  {
    v43 = 3;
  }

  v4 += v43;
  if ((v3 & 0x400000) == 0)
  {
LABEL_93:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_115;
  }

LABEL_111:
  v44 = *(this + 30);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 35);
  }

  else
  {
    v45 = 3;
  }

  v4 += v45;
  if ((v3 & 0x800000) != 0)
  {
LABEL_115:
    v46 = *(this + 31);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 35);
    }

    else
    {
      v47 = 3;
    }

    v4 += v47;
  }

LABEL_119:
  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v48 = *(this + 32);
      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
        v3 = *(this + 35);
      }

      else
      {
        v49 = 3;
      }

      v4 += v49;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v50 = *(this + 33);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
      }

      else
      {
        v51 = 3;
      }

      v4 += v51;
    }
  }

  v52 = *(this + 22);
  if (v52 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(this + 10) + 4 * v53);
      if ((v55 & 0x80000000) != 0)
      {
        v56 = 10;
      }

      else if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 22);
      }

      else
      {
        v56 = 1;
      }

      v54 += v56;
      ++v53;
    }

    while (v53 < v52);
  }

  v57 = *(this + 28);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(*(this + 13) + 4 * v58);
      if ((v60 & 0x80000000) != 0)
      {
        v61 = 10;
      }

      else if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 28);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  result = (v54 + v4 + v59 + 2 * (v57 + v52));
  *(this + 34) = result;
  return result;
}