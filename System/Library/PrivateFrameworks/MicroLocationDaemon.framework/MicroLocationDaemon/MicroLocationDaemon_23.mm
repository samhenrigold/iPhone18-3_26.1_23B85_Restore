void sub_25919C038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double CLMicroLocationLoiManager::FailedToFetchedPlaceInference@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToFetchPlaceInference *a2@<X1>, std::string *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "LOI Manager, Failed To fetch place inferences, starting leeching", buf, 2u);
  }

  if (*(this + 512))
  {
    ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(buf);
    v7 = buf[23];
    v8 = buf[23];
    if (buf[23] < 0)
    {
      v7 = *&buf[8];
    }

    if (!v7)
    {
      CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_HomeLoiEntryFa.isa, &cfstr_PlaceInference.isa);
      CLMicroLocationLoiManager::resetLoiVariables(this);
      [*(this + 43) startLeechingLocationUpdates];
      std::string::basic_string[abi:ne200100]<0>(&v29, "Not in Active Location State");
      result = *&v29.__r_.__value_.__l.__data_;
      *a3 = v29;
      a3[1].__r_.__value_.__s.__data_[0] = 1;
      if ((v8 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    std::string::operator=((this + 392), buf);
    *(this + 54) = (*(*this + 16))(this);
    *(this + 55) = v9;
    *(this + 512) = 0;
    memset(&v29, 0, sizeof(v29));
    CLMicroLocationLoiManager::tryToEnterHomeLoi(this, &__p, this + 392, this + 27, &v29);
    result = *&__p.__r_.__value_.__l.__data_;
    *&a3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v11 = v29.__r_.__value_.__r.__words[0];
    a3->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    if (v11)
    {
      v29.__r_.__value_.__l.__size_ = v11;
      operator delete(v11);
    }

    if ((buf[23] & 0x80) != 0)
    {
LABEL_19:
      operator delete(*buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(this + 3);
      if (*(v13 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(v13 + 8), *(v13 + 16));
      }

      else
      {
        v14 = *(v13 + 8);
        v29.__r_.__value_.__r.__words[2] = *(v13 + 24);
        *&v29.__r_.__value_.__l.__data_ = v14;
      }

      v15 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      v16 = v29.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v17 = &v29;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v17;
      v31 = 2081;
      v32 = p_p;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v19))
    {
      v20 = *(this + 3);
      if (*(v20 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(v20 + 8), *(v20 + 16));
      }

      else
      {
        v21 = *(v20 + 8);
        v29.__r_.__value_.__r.__words[2] = *(v20 + 24);
        *&v29.__r_.__value_.__l.__data_ = v21;
      }

      v22 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      v23 = v29.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v24 = &v29;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v24;
      v31 = 2081;
      v32 = v25;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    v26 = *(this + 3);
    if (*(v26 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v26 + 8), *(v26 + 16));
    }

    else
    {
      v27 = *(v26 + 8);
      *&buf[16] = *(v26 + 24);
      *buf = v27;
    }

    result = *buf;
    *&a3->__r_.__value_.__l.__data_ = *buf;
    a3->__r_.__value_.__r.__words[2] = *&buf[16];
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

double CLMicroLocationLoiManager::RelatedLois@<D0>(CLMicroLocationLoiManager *this@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(this + 513))
  {
    CLMicroLocationLoiManager::tryToEnterHomeLoi(this, buf, this + 392, this + 27, a2 + 4);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 3);
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v8 = *(v7 + 8);
        v24.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&v24.__r_.__value_.__l.__data_ = v8;
      }

      v9 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v10 = v24.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v11 = &v24;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      v26 = 2081;
      v27 = p_p;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = *(this + 3);
      if (*(v14 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v14 + 8), *(v14 + 16));
      }

      else
      {
        v15 = *(v14 + 8);
        v24.__r_.__value_.__r.__words[2] = *(v14 + 24);
        *&v24.__r_.__value_.__l.__data_ = v15;
      }

      v16 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v17 = v24.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v18 = &v24;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v18;
      v26 = 2081;
      v27 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    v20 = *(this + 3);
    if (*(v20 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v20 + 8), *(v20 + 16));
    }

    else
    {
      v21 = *(v20 + 8);
      *&buf[16] = *(v20 + 24);
      *buf = v21;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerEnableCustomLoiEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(this + 58);
  v7 = *(this + 59);
  while (1)
  {
    if (v6 == v7)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
        v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Adding new service to list of servies that have requested to enable custom LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::vector<boost::uuids::uuid>::push_back[abi:ne200100](this + 464, a2 + 2);
      v11 = *(this + 3);
      if ((*(v11 + 31) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_17:
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
      goto LABEL_36;
    }

    v20 = *v6;
    if (v20 == *(a2 + 4) && *(&v20 + 1) == *(a2 + 5))
    {
      break;
    }

    ++v6;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v13;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got enable custom LOI request from the same service, ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(v14))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = p_p;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got enable custom LOI request from the same service, ignoring", "{msg%{public}.0s:#LOI Manager, got enable custom LOI request from the same service, ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(this + 3);
  if (*(v11 + 31) < 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  v16 = *(v11 + 8);
  *&buf[16] = *(v11 + 24);
  *buf = v16;
LABEL_36:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling@<D0>(id *this@<X0>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *v24 = *(a2 + 2);
  if (v24[0] == this[54] && v24[1] == this[55])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v24, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry for LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendCustomLoiCreationEvent(this);
    v13 = this[58];
    v14 = this[59];
    while (v13 != v14)
    {
      *buf = *v13;
      CLMicroLocationLoiManager::addLoiAndServiceMapping(this, *v24, buf);
      ++v13;
    }

    v15 = -1;
  }

  else
  {
    if (*(this + 432))
    {
LABEL_6:
      boost::lexical_cast<std::string,boost::uuids::uuid>((this + 54), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
      v8 = [v7 uppercaseString];

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, Disabling geofence that we were trying to enable for custom LOI since we are failing the request, loiID:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      [this[43] removeGeofenceWithRegionId:v8];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = 0;
      while (v16 != 15)
      {
        v17 = v16;
        if (*(this + v16++ + 433))
        {
          if (v17 <= 0xE)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, Error: tried to enable custom LOI at an active custom LOI}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, Error: tried to enable custom LOI at an active custom LOI", "{msg%{public}.0s:#LOI Manager, Error: tried to enable custom LOI at an active custom LOI}", buf, 0x12u);
    }

    v15 = 34;
  }

  CLMicroLocationLoiManager::resetLoiVariables(this);
  CLMicroLocationLoiManager::enterCustomLoi(this, v24[0], v24[1], 10);
  (**this[44])(this[44], v15);
  std::string::basic_string[abi:ne200100]<0>(buf, "In Custom LOI State");
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::LocationUpdate@<D0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 514))
  {
    v6 = a2[4];
    [v6 coordinate];
    *(a1 + 360) = v7;
    [v6 coordinate];
    *(a1 + 368) = v8;
    [*(a1 + 344) removeGeofencesNearLocationWithLatitude:*(a1 + 360) andLongitude:?];
    [v6 horizontalAccuracy];
    *(a1 + 376) = v9;
    [v6 verticalAccuracy];
    *(a1 + 384) = v10;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 360);
      v13 = *(a1 + 368);
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2053;
      *&buf[20] = v12;
      v36 = 2053;
      v37 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got location update to enable custom geofence, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", buf, 0x26u);
    }

    [*(a1 + 344) setGeofenceAtLocation:v6];
    *(a1 + 514) = 256;
    v14 = *(a1 + 24);
    if (*(v14 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v14 + 8), *(v14 + 16));
    }

    else
    {
      v15 = *(v14 + 8);
      *&buf[16] = *(v14 + 24);
      *buf = v15;
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v34.__r_.__value_.__l.__data_ = v18;
      }

      v20 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v21 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v22 = &v34;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v22;
      v36 = 2081;
      v37 = p_p;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v24 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v24))
    {
      v25 = *(a1 + 24);
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v34.__r_.__value_.__l.__data_ = v26;
      }

      v27 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v28 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v29 = &v34;
      if (v27 < 0)
      {
        v29 = v28;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v29;
      v36 = 2081;
      v37 = v30;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v31 = *(a1 + 24);
    if (*(v31 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v31 + 8), *(v31 + 16));
    }

    else
    {
      v32 = *(v31 + 8);
      *&buf[16] = *(v31 + 24);
      *buf = v32;
    }

    result = *buf;
    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
  }

  return result;
}

double CLMicroLocationLoiManager::FailureToGetLocationUpdate@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToGetLocationUpdateEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo... aborting request}", buf, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to get current location to enable MiLo... aborting request", "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo... aborting request}", buf, 0x12u);
  }

  if (*(this + 514))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_FailedToGetCur.isa);
    (***(this + 44))(*(this + 44), 34);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v26.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v26.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v12 = v26.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v13 = &v26;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      v28 = 2081;
      v29 = p_p;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = *(this + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v26.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v26.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v19 = v26.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v20 = &v26;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v20;
      v28 = 2081;
      v29 = v21;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    v22 = *(this + 3);
    if (*(v22 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v22 + 8), *(v22 + 16));
    }

    else
    {
      v23 = *(v22 + 8);
      *&buf[16] = *(v22 + 24);
      *buf = v23;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::GeofenceActivationStarted@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerStartedActivatingGeofenceEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(this + 515) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v13 = __p.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &v25);
      p_p = &__p;
      if (v12 < 0)
      {
        p_p = v13;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v25;
      }

      else
      {
        v15 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      v28 = 2081;
      v29 = v15;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v16))
    {
      v17 = *(this + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&__p.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v20 = __p.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &v25);
      v21 = &__p;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v25;
      }

      else
      {
        v22 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v21;
      v28 = 2081;
      v29 = v22;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v8 = *(this + 3);
    if (*(v8 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v8 + 8), *(v8 + 16));
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *(this + 27) = *(a2 + 2);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(this + 432, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, successfully set geofence, now waiting on fence entry update, geofenceId:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(this + 3);
  if ((*(v8 + 31) & 0x80000000) == 0)
  {
LABEL_43:
    v23 = *(v8 + 8);
    *&buf[16] = *(v8 + 24);
    *buf = v23;
    goto LABEL_44;
  }

  std::string::__init_copy_ctor_external(buf, *(v8 + 8), *(v8 + 16));
LABEL_44:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToSetGeofenceEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request}", buf, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request", "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request}", buf, 0x12u);
  }

  if (*(this + 515))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_FailedToSetGeo.isa);
    (***(this + 44))(*(this + 44), 34);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v26.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v26.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v12 = v26.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v13 = &v26;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      v28 = 2081;
      v29 = p_p;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = *(this + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v26.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v26.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v19 = v26.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v20 = &v26;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v20;
      v28 = 2081;
      v29 = v21;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    v22 = *(this + 3);
    if (*(v22 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v22 + 8), *(v22 + 16));
    }

    else
    {
      v23 = *(v22 + 8);
      *&buf[16] = *(v22 + 24);
      *buf = v23;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler@<D0>(CLMicroLocationLoiManager *this@<X0>, uint64_t a2@<X8>)
{
  CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_CustomLoiEntry_0.isa);
  (***(this + 44))();
  CLMicroLocationLoiManager::resetLoiVariables(this);
  std::string::basic_string[abi:ne200100]<0>(&v5, "Not in Active Location State");
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = 1;
  return result;
}

void sub_25919E61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState();
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919E994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState();
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919EC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState();
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919EF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState();
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState();
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLoiManager::~CLMicroLocationLoiManager(CLMicroLocationLoiManager *this)
{
  *this = &unk_286A5D500;
  *(this + 1) = &unk_286A5D5A8;
  v2 = (this + 16);
  *(this + 2) = &unk_286A5D618;

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  ULHomeSlamModel::getTrajectoryPointCloud((this + 320));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 312));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 304));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 296));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 288));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 280));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 272));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 264));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 256));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 248));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 240));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 232));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 224));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 216));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 208));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 200));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 192));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 184));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 176));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 168));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 160));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 152));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 144));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 136));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 128));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 120));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 112));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 104));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 96));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 88));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 80));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 72));
  CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(v2);
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager(this);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toCLMicroLocationLoiManager::~CLMicroLocationLoiManager(CLMicroLocationLoiManager *this)
{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 8));
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 16));
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 16));

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::setupWithLoiBridge(id *a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_FAULT, "FAULT: Tried to initialize LOI Manager with a nil LOI Bridge Object", v6, 2u);
    }
  }

  objc_storeStrong(a1 + 43, a2);
  [a1[43] setMicroLocationLoiDelegate:a1 + 1];
  CLMicroLocationLoiManager::setupStartTimer(a1);
}

void CLMicroLocationLoiManager::setupStartTimer(CLMicroLocationLoiManager *this)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULInitialDelayForFetchPlaceInference"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedIntValue];
  }

  else
  {
    v7 = [&unk_286A72750 unsignedIntValue];
  }

  v8 = v7;

  v9 = [v2 numberWithDouble:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN25CLMicroLocationLoiManager15setupStartTimerEv_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = this;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v12];
  v11 = *(this + 65);
  *(this + 65) = v10;
}

uint64_t CLMicroLocationLoiManager::setupRegionMonitoring(CLMicroLocationLoiManager *this)
{
  v2 = *(this + 43);
  if (!v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_FAULT, "FAULT: Tried to setup Region Monitoring with a nil LOI Bridge Object", v5, 2u);
    }

    v2 = *(this + 43);
  }

  return [v2 setupRegionMonitoring];
}

void CLMicroLocationLoiManager::enableMicroLocationAtCurrentLocationForService(CLMicroLocationLoiManager *this, const uuid *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
  v5 = off_286A5E190;
  v8 = *a2;
  if (v7 < 0)
  {
    __p[1] = 17;
    v4 = __p[0];
  }

  else
  {
    v7 = 17;
  }

  strcpy(v4, "Enable Custom LOI");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v5);
  v5 = &unk_286A5E1B0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25919FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerEnableCustomLoiEvent::~CLMiLoLoiManagerEnableCustomLoiEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::disableMicroLocationAtLocationForService(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v4 = *&a2.data[8];
  v5 = *a2.data;
  v14 = *MEMORY[0x277D85DE8];
  v7 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
  v8 = off_286A5E1D0;
  v11 = v5;
  v12 = v4;
  v13 = *a3;
  if (v10 < 0)
  {
    __p[1] = 18;
    v7 = __p[0];
  }

  else
  {
    v10 = 18;
  }

  strcpy(v7, "Disable Custom LOI");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v8);
  v8 = &unk_286A5E1B0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25919FC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerDisableCustomLoiEvent::~CLMiLoLoiManagerDisableCustomLoiEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::fetchPlaceInferenceForReason(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
  v4 = &unk_286A5E1F0;
  v6 = a2;
  std::string::__assign_external(&__p, "Fetch Place Inference For Reason", 0x20uLL);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v4);
  v4 = &unk_286A5E1B0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25919FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerFetchPlaceInferenceForReason::~CLMiLoLoiManagerFetchPlaceInferenceForReason(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleRefreshLocationIntervalNotificaion(CLMicroLocationLoiManager *this)
{
  CLMiLoLoiManagerRefreshLocationOnEvent::CLMiLoLoiManagerRefreshLocationOnEvent(v2);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), v2);
  v2[0] = &unk_286A5E1B0;
  if (v3 < 0)
  {
    operator delete(v2[1]);
  }
}

void sub_25919FE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerRefreshLocationOnEvent::~CLMiLoLoiManagerRefreshLocationOnEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t *CLMicroLocationLoiManager::handleCustomLoiVisitEntry@<X0>(uint64_t *__return_ptr a1@<X8>, CLMicroLocationLoiManager *this@<X0>, uuid a3@<0:X1, 8:X2>)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = p_p;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry event for valid LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::enterCustomLoi(this, *v15.data, *&v15.data[8], 10);
  return std::string::basic_string[abi:ne200100]<0>(a1, "In Custom LOI State");
}

void CLMicroLocationLoiManager::enterCustomLoi(CLMicroLocationLoiManager *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLMicroLocationLoiManager::sendCustomLoiVisitEvent(a1, &cfstr_CustomLoi.isa, &cfstr_Entry.isa);
  std::string::basic_string[abi:ne200100]<0>(&__p, "custom");
  CLMicroLocationLoiManager::enterLoi(a1, a2, a3, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *v9.data = a2;
  *&v9.data[8] = a3;
  CLMicroLocationLoiManager::updateDbCustomLoiWasLastSeenNow(a1, v9);
}

void sub_2591A00DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CLMicroLocationLoiManager::handleEnableCustomLoi@<X0>(uint64_t *__return_ptr a1@<X8>, id *this@<X0>, uuid a3@<0:X1, 8:X2>)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#LOI Manager, kick off creating custom LOI process", v7, 2u);
  }

  [this[43] getCurrentLocation];
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100]((this + 58), &v8);
  this[54] = 0;
  this[55] = 0;
  return std::string::basic_string[abi:ne200100]<0>(a1, "In the process of entering Custom LOI");
}

void CLMicroLocationLoiManager::handleDisableCustomLoi(std::string *__return_ptr a1@<X8>, id *this@<X0>, uuid a3@<0:X1, 8:X2>, uuid a4@<0:X3, 8:X4>)
{
  CLMicroLocationLoiManager::disableCustomLoiForService(this, a3, a4);
  (*(*this[44] + 8))(this[44], -1);
  v6 = this[3];
  if (v6[31] < 0)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);

    std::string::__init_copy_ctor_external(a1, v8, v9);
  }

  else
  {
    v7 = *(v6 + 8);
    a1->__r_.__value_.__r.__words[2] = *(v6 + 3);
    *&a1->__r_.__value_.__l.__data_ = v7;
  }
}

void CLMicroLocationLoiManager::disableCustomLoiForService(id *this, uuid a2, uuid a3)
{
  v3 = *&a2.data[8];
  v4 = *a2.data;
  v24 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v22 = a3;
  CLMicroLocationLoiManager::removeLoiAndServiceMapping(this, a2, &v22);
  *v25.data = v4;
  *&v25.data[8] = v3;
  if (CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, v25))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v23, &v13);
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v8 = [v7 uppercaseString];

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v13;
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v13.__r_.__value_.__r.__words[0];
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v10;
      v20 = 2081;
      v21 = p_p;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, No More services monitoring this LOI, disable geofence for LOI, loiID:%{private, location:escape_only}s, Service Id:%{private, location:escape_only}s}", buf, 0x26u);
    }

    [this[43] removeGeofenceWithRegionId:v8];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2591A042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::removeLoiAndServiceMapping(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = a2;
  boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &v10);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v19, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = &v10;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = p_p;
    v17 = 2081;
    v18 = v7;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, Removing LOI to Service ID mapping, Location ID:%{private, location:escape_only}s, Service ID:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = (*(**(this + 41) + 112))(*(this + 41));
  [v8 removeServiceToCustomLoiMapping:a3 loiId:&v19];

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2591A0618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(CLMicroLocationLoiManager *this, uuid a2)
{
  v2 = (*(**(this + 41) + 112))(*(this + 41));
  v3 = v2;
  if (v2)
  {
    objc_msgSend_getAllServicesEnabledAtCustomLoiId_(v2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v6 == v5;
}

void CLMicroLocationLoiManager::handleDisableCustomLoiForAllServices(CLMicroLocationLoiManager *this, uuid a2)
{
  v3 = (*(**(this + 41) + 112))(*(this + 41));
  v4 = v3;
  if (v3)
  {
    objc_msgSend_getAllServicesEnabledAtCustomLoiId_(v3);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v5 = v6;
  if (v6 != v7)
  {
    do
    {
      CLMicroLocationLoiManager::disableCustomLoiForService(this, a2, *v5++);
    }

    while (v5 != v7);
    v5 = v6;
  }

  if (v5)
  {
    operator delete(v5);
  }
}

void *CLMicroLocationLoiManager::tryToEnterHomeLoi@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, __int128 *a4@<X2>, __int128 **a5@<X3>)
{
  v24 = *MEMORY[0x277D85DE8];
  *(a1 + 416) = CLMicroLocationLoiManager::getLoiGroupId(a1, a3, a4, a5);
  *(a1 + 424) = v7;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a1 + 416, &__p);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Fetched LOI Group ID, LOI Group ID :%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 416))
  {
LABEL_10:
    [*(a1 + 344) stopLeechingLocationUpdates];
    if (*(a1 + 508) == 1)
    {
      v10 = *(a1 + 504);
      *(a1 + 508) = 0;
    }

    else
    {
      v10 = 1;
    }

    v14 = *(a1 + 352);
    if (*(a1 + 415) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a1 + 392), *(a1 + 400));
    }

    else
    {
      v16 = *(a1 + 392);
    }

    (*(*v14 + 16))(v14, &v16, *(a1 + 416), *(a1 + 424), v10);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v13 = "In Home LOI State";
  }

  else
  {
    v11 = 417;
    while (v11 != 432)
    {
      if (*(a1 + v11++))
      {
        if ((v11 - 418) < 0xF)
        {
          goto LABEL_10;
        }

        break;
      }
    }

    CLMicroLocationLoiManager::resetLoiVariables(a1);
    v13 = "Not in Active Location State";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v13);
}

uint64_t CLMicroLocationLoiManager::getLoiGroupId(uint64_t a1, uint64_t a2, __int128 *a3, __int128 **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v35 = 0uLL;
  v8 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  v9 = v8;
  if (v8)
  {
    objc_msgSend_getLoiGroupIdForLoi_(v8);
  }

  else
  {
    v33 = 0uLL;
    v34 = 0;
  }

  if (v34 == 1)
  {
    if (v33 == 0)
    {
      v33 = *a3;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "#LOI Manager, Overwriting stored LOI group ID because nil uuid was retrieved", buf, 2u);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if ((v34 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      boost::lexical_cast<std::string,boost::uuids::uuid>(&v33, &v28);
      v12 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      v13 = v28.__r_.__value_.__r.__words[0];
      boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &__p);
      v14 = &v28;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *v30 = 2082;
      *&v30[2] = "";
      *&v30[10] = 2082;
      *&v30[12] = v14;
      v31 = 2082;
      v32 = p_p;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, got previously stored LOI Group ID for LOI ID, LOI Group Id:%{public, location:escape_only}s, LOI ID:%{public, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    if ((v34 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v35 = v33;
    goto LABEL_45;
  }

  v16 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  v17 = v16;
  if (v16)
  {
    objc_msgSend_getLoiGroupIdsForLois_(v16);
  }

  else
  {
    *buf = 0;
    *v30 = 0;
    *&v30[8] = 0;
  }

  if (*v30 != *buf)
  {
    if (*v30 - *buf >= 0x11uLL)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v28.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "#LOI Manager, received multiple Loi Group IDs for LOI -- this should never happen", &v28, 2u);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "#LOI Manager, got previously stored LOI Group ID for list of LOI IDs", &v28, 2u);
    }

    v20 = *buf;
    v35 = **buf;
LABEL_44:
    *v30 = v20;
    operator delete(v20);
    goto LABEL_45;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v21 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    LOWORD(v28.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_INFO, "#LOI Manager, never before seen LOI, so starting with this LOI ID as the group ID", &v28, 2u);
  }

  v35 = *a3;
  v20 = *buf;
  if (*buf)
  {
    goto LABEL_44;
  }

LABEL_45:
  v22 = *a4;
  v23 = a4[1];
  v24 = v23 - *a4;
  *v30 = 0;
  *&v30[8] = 0;
  *buf = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<std::__wrap_iter<boost::uuids::uuid const*>,std::__wrap_iter<boost::uuids::uuid const*>>(buf, v22, v23, v24);
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100](buf, a3);
  v25 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  [v25 updateLoiIds:buf withLoiGroupId:&v35 andLoiType:a2];

  if (*buf)
  {
    *v30 = *buf;
    operator delete(*buf);
  }

  return v35;
}

void sub_2591A0F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::exitCurrentLoi(uint64_t a1, uint64_t a2)
{
  CLMicroLocationLoiManager::resetLoiVariables(a1);
  v4 = *(a1 + 352);
  if (*(a1 + 415) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 392), *(a1 + 400));
  }

  else
  {
    __p = *(a1 + 392);
  }

  (*(*v4 + 16))(v4, &__p, *(a1 + 416), *(a1 + 424), a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2591A1024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLoiManager::isValidGeofence(CLMicroLocationLoiManager *this, uuid a2)
{
  v2 = (*(**(this + 41) + 112))(*(this + 41));
  v3 = v2;
  if (!v2)
  {

    return v3 & 1;
  }

  objc_msgSend_getAllDistinctCustomLoiIds(v2);

  if (v10 == v11)
  {
    LOBYTE(v3) = 0;
    if (!v10)
    {
      return v3 & 1;
    }

LABEL_15:
    operator delete(v10);
    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v4 = v10;
  do
  {
    v5 = *v4;
    v6 = v4[1];
    v4 += 2;
    v8 = *a2.data == v5 && *&a2.data[8] == v6;
    LOBYTE(v3) = v8 | v3;
  }

  while (v4 != v11);
  if (v10)
  {
    goto LABEL_15;
  }

  return v3 & 1;
}

void CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(CLMicroLocationLoiManager *this, NSString *a2, NSString *a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11[0] = @"loiRelatedFailureOccurred";
  v11[1] = @"failureType";
  v12[0] = &unk_286A72738;
  v12[1] = v5;
  v12[2] = v6;
  v11[2] = @"failureReason";
  v11[3] = @"fsmStateDuringFailure";
  v7 = *(this + 3);
  v8 = (v7 + 8);
  if (*(v7 + 31) < 0)
  {
    v8 = *v8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v10, &cfstr_ComAppleMicrol_18.isa, v10);
}

void sub_2591A126C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

BOOL CLMicroLocationLoiManager::fetchPlaceInference(id *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(this + 508) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(*(this + 126), __p);
    if (v10 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 68289283;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, Attempting to fetch place inference, Reason::%{private, location:escape_only}s}", buf, 0x1Cu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = this[43];
  if (v4)
  {
    [this[43] stopLeechingLocationUpdates];
    if ((*(this + 508) & ((this[63] & 0xFFFFFFFE) == 6)) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [this[43] fetchPlaceInferenceAtCurrentLocationWithPolicy:v5];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning LOI Bridge not setup.}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning LOI Bridge not setup.", "{msg%{public}.0s:#Warning LOI Bridge not setup.}", buf, 0x12u);
    }
  }

  return v4 != 0;
}

BOOL CLMicroLocationLoiManager::fetchLoiIdsForLoi(CLMicroLocationLoiManager *this, NSUUID *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(this + 43);
  if (v4)
  {
    [v4 fetchRelatedLoisForLoi:v3];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning LOI Bridge not setup.}", v7, 0x12u);
    }
  }

  return v4 != 0;
}

void *CLMicroLocationLoiManager::convertPlaceInferenceUserPlaceTypeToString@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v4 = "other";
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v4 = "home";
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v4 = "work";
        goto LABEL_12;
      case 3:
        v4 = "school";
        goto LABEL_12;
      case 4:
        v4 = "gym";
LABEL_12:

        return std::string::basic_string[abi:ne200100]<0>(a3, v4);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Please update this switch statement.", v7, 2u);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, "none");
}

void CLMicroLocationLoiManager::startCustomLoiEntryTimer(id *this)
{
  v19 = *MEMORY[0x277D85DE8];
  [this[66] invalidate];
  v2 = this[66];
  this[66] = 0;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, startCustomLoiEntryTimer}", buf, 0x12u);
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiEntryTimeout"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A72768 doubleValue];
  }

  v10 = v9;

  v11 = [v4 numberWithDouble:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZN25CLMicroLocationLoiManager24startCustomLoiEntryTimerEv_block_invoke;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = this;
  v12 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v11 repeats:MEMORY[0x277CBEC28] block:v14];
  v13 = this[66];
  this[66] = v12;
}

void CLMicroLocationLoiManager::sendCustomLoiCreationEvent(CLMicroLocationLoiManager *this)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286A72738;
  v5[0] = @"createdCustomLoi";
  v5[1] = @"geofenceLocationHorizontalAccuracy";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 47)];
  v6[1] = v2;
  v5[2] = @"geofenceLocationVerticalAccuracy";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 48)];
  v6[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v4, &cfstr_ComAppleMicrol_16.isa, v4);
}

void sub_2591A1AC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::addLoiAndServiceMapping(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = a2;
  boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &v10);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v19, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = &v10;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = p_p;
    v17 = 2081;
    v18 = v7;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, Adding LOI to Service ID mapping, Location ID:%{private, location:escape_only}s, Service ID:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = (*(**(this + 41) + 112))(*(this + 41));
  [v8 addServiceToCustomLoiMapping:a3 loiId:&v19];

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2591A1C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::enterLoi(uint64_t a1, uint64_t a2, uint64_t a3, std::string *__str, uint64_t a5)
{
  *(a1 + 416) = a2;
  *(a1 + 424) = a3;
  v7 = (a1 + 392);
  std::string::operator=((a1 + 392), __str);
  v8 = *(a1 + 352);
  if (*(a1 + 415) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 392), *(a1 + 400));
  }

  else
  {
    __p = *v7;
  }

  (*(*v8 + 16))(v8, &__p, *(a1 + 416), *(a1 + 424), a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2591A1DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLoiManager::sendCustomLoiVisitEvent(CLMicroLocationLoiManager *this, NSString *a2, NSString *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v7[0] = @"customLoiVisitOccurred";
  v7[1] = @"loiType";
  v8[0] = &unk_286A72738;
  v8[1] = v4;
  v7[2] = @"visitEventType";
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v6, &cfstr_ComAppleMicrol_17.isa, v6);
}

void sub_2591A1EAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::updateDbCustomLoiWasLastSeenNow(CLMicroLocationLoiManager *this, uuid a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100](&v6, &v9);
  v3 = (*(**(this + 41) + 64))(*(this + 41));
  std::string::basic_string[abi:ne200100]<0>(__p, "custom");
  [v3 updateLoiIds:&v6 withLoiGroupId:&v9 andLoiType:__p];
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_2591A1FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN25CLMicroLocationLoiManager15setupStartTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 520) invalidate];
  v2 = *(v1 + 520);
  *(v1 + 520) = 0;

  if ((*(**(v1 + 336) + 56))(*(v1 + 336)))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "#LOI Manager -- Fetching Place inference on Start up", buf, 2u);
    }

    (*(*v1 + 56))(v1, 7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#LOI Manager -- Skipping place inference on Start up - database not available", v5, 2u);
    }
  }
}

void CLMicroLocationLoiManager::sendCoreAnalyticsEvent(CLMicroLocationLoiManager *this, NSString *a2, NSDictionary *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v11 = v10;

  if (v11)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14[0] = 68289539;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = [(NSString *)v4 UTF8String];
      v19 = 2113;
      v20 = v5;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, sending core analytics, event:%{private, location:escape_only}s, eventFields:%{private, location:escape_only}@}", v14, 0x26u);
    }

    AnalyticsSendEvent();
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "#LOI Manager, CoreAnalytics Disabled", v14, 2u);
    }
  }
}

void CLMicroLocationLoiManager::handleVisitNotification(CLMicroLocationLoiManager *this, CLVisit *a2)
{
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "LOI Manager, handleVisitNotification", &v11, 2u);
  }

  if ([(CLVisit *)v3 hasDepartureDate])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "LOI Manager, Received visit exit", &v11, 2u);
    }

    v6 = v3;
    v11 = &unk_286A5E1B0;
    v7 = std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v11 = &unk_286A5E230;
    v15 = v6;
    if (v14 < 0)
    {
      v13 = 14;
      v7 = __p;
    }

    else
    {
      v14 = 14;
    }

    strcpy(v7, "LOI Visit Exit");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v11);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "LOI Manager, Received visit entry", &v11, 2u);
    }

    v9 = v3;
    v11 = &unk_286A5E1B0;
    v10 = std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v11 = &unk_286A5E250;
    v15 = v9;
    if (v14 < 0)
    {
      v13 = 15;
      v10 = __p;
    }

    else
    {
      v14 = 15;
    }

    strcpy(v10, "LOI Visit Entry");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v11);
  }

  v11 = &unk_286A5E1B0;
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_2591A265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::handleFetchedPlaceInferences(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v13 = 68289283;
      *__p = 2082;
      *&__p[2] = "";
      v15 = 1025;
      v16 = a3;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Bridge, Failed To fetch place inferences, Error code::%{private}d}", &v13, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v13 = 68289283;
      *__p = 2082;
      *&__p[2] = "";
      v15 = 1025;
      v16 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Bridge, Failed To fetch place inferences", "{msg%{public}.0s:LOI Bridge, Failed To fetch place inferences, Error code::%{private}d}", &v13, 0x18u);
    }
  }

  if ([v5 count])
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 _loiIdentifier];
    v10 = v9 == 0;

    if (!v10)
    {
      CLMiLoLoiManagerFetchedPlaceInference::CLMiLoLoiManagerFetchedPlaceInference(&v13, v8);
      CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v13);
      CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&v13);
      goto LABEL_24;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "LOI Bridge, received nil LOI Identifier, possibly because there is no active user on macOS, we will start leeching and wait for next location update", &v13, 2u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "LOI Bridge, received no place inferences, we will start leeching and wait for next location update", &v13, 2u);
    }

    v8 = 0;
  }

  CLMiLoLoiManagerFailedToFetchPlaceInference::CLMiLoLoiManagerFailedToFetchPlaceInference(&v13);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v13);
  v13 = &unk_286A5E1B0;
  if (v17 < 0)
  {
    operator delete(*__p);
  }

LABEL_24:
}

void sub_2591A299C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToFetchPlaceInference::~CLMiLoLoiManagerFailedToFetchPlaceInference(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleFetchedLocationOfInterestAtLocation(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12) = 67109120;
      HIDWORD(v12) = a4;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#Warning LOI Manager, Error retrieving the current LOI. Error code: %d", &v12, 8u);
    }

    CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(&v12);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v12);
    v12 = &unk_286A5E1B0;
  }

  else
  {
    v10 = v7;
    v11 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v12 = &unk_286A5E2D0;
    v15 = v10;
    if (v14 < 0)
    {
      __p[1] = 13;
      v11 = __p[0];
    }

    else
    {
      v14 = 13;
    }

    strcpy(v11, "Got LOI Event");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v12);

    v12 = &unk_286A5E1B0;
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2591A2C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::~CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleRelatedLoisForLoi(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      LOWORD(v37) = 2082;
      *(&v37 + 2) = "";
      WORD5(v37) = 1025;
      HIDWORD(v37) = a3;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning LOI Manager, Error retrieving related LOIs for Loi, error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      LOWORD(v37) = 2082;
      *(&v37 + 2) = "";
      WORD5(v37) = 1025;
      HIDWORD(v37) = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning LOI Manager, Error retrieving related LOIs for Loi", "{msg%{public}.0s:#Warning LOI Manager, Error retrieving related LOIs for Loi, error code:%{private}d}", buf, 0x18u);
    }
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v29 + 1) + 8 * i) UUIDString];
        v12 = v11;
        v13 = [v11 UTF8String];
        v14 = strlen(v13);
        v15 = boost::uuids::string_generator::operator()<char const*>(buf, v13, &v13[v14]);
        v17 = v16;
        v18 = v34;
        if (v34 >= v35)
        {
          v20 = (v34 - __p) >> 4;
          v21 = v20 + 1;
          if ((v20 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v22 = v35 - __p;
          if ((v35 - __p) >> 3 > v21)
          {
            v21 = v22 >> 3;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v23);
          }

          v24 = (16 * v20);
          *v24 = v15;
          v24[1] = v17;
          v19 = (16 * v20 + 16);
          v25 = v24 - (v34 - __p);
          memcpy(v25, __p, v34 - __p);
          v26 = __p;
          __p = v25;
          v34 = v19;
          v35 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v34 = v15;
          *(v18 + 1) = v16;
          v19 = v18 + 16;
        }

        v34 = v19;
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v8);
  }

  *buf = &unk_286A5E1B0;
  v27 = &v37;
  std::string::basic_string[abi:ne200100]<0>(&v37, "No Name Given");
  *buf = &unk_286A5E2F0;
  memset(v39, 0, 24);
  std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v39, __p, v34, (v34 - __p) >> 4);
  if (v38 < 0)
  {
    *(&v37 + 1) = 16;
    v27 = v37;
  }

  else
  {
    v38 = 16;
  }

  strcpy(v27, "Got Related LOIs");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(buf);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_2591A30EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::handleLocationUpdate(_BYTE *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *__p = 2082;
      *&__p[2] = "";
      v21 = 1025;
      v22 = a3;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *__p = 2082;
      *&__p[2] = "";
      v21 = 1025;
      v22 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to get current location to enable MiLo", "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (a1[514] == 1)
    {
      CLMiLoLoiManagerFailedToGetLocationUpdateEvent::CLMiLoLoiManagerFailedToGetLocationUpdateEvent(buf);
      CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
      *buf = &unk_286A5E1B0;
      if (v23 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else if (a1[514] == 1)
  {
    CLMiLoLoiManagerGotLocationUpdateEvent::CLMiLoLoiManagerGotLocationUpdateEvent(buf, v5);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CLLocation *)v5 coordinate];
      v10 = v9;
      [(CLLocation *)v5 coordinate];
      v12[0] = 68289539;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2053;
      v16 = v10;
      v17 = 2053;
      v18 = v11;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got location update, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", v12, 0x26u);
    }

    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
    CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(buf);
  }

  else
  {
    (*(*a1 + 112))(a1, v5);
  }
}

void sub_2591A346C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a15);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToGetLocationUpdateEvent::~CLMiLoLoiManagerFailedToGetLocationUpdateEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::didCompleteSettingGeofenceAtLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = a5;
    CLMiLoLoiManagerFailedToSetGeofenceEvent::CLMiLoLoiManagerFailedToSetGeofenceEvent(&v11);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v11);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      v20 = v6;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      v20 = v6;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to set geofence at current location to enable MiLo", "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    v11 = &unk_286A5E1B0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v11 = &unk_286A5E390;
    v13 = a3;
    v14 = a4;
    std::string::__assign_external(&__p, "Started Process of Activaing Geofence", 0x25uLL);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v11);
    v11 = &unk_286A5E1B0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void CLMiLoLoiManagerFailedToSetGeofenceEvent::~CLMiLoLoiManagerFailedToSetGeofenceEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerStartedActivatingGeofenceEvent::~CLMiLoLoiManagerStartedActivatingGeofenceEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleGeofenceUpdate(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 UTF8String];
  v7 = strlen(v6);
  v8 = boost::uuids::string_generator::operator()<char const*>(&v16, v6, &v6[v7]);
  v10 = v9;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v5;
    v13 = [v5 UTF8String];
    v16 = 68289539;
    *__p = 2082;
    *&__p[2] = "";
    *&__p[10] = 2081;
    *&__p[12] = v13;
    v18 = 1025;
    *v19 = a3;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, Got Geofence update, Geofence Id:%{private, location:escape_only}s, State:%{private}d}", &v16, 0x22u);
  }

  if (a3 == 1)
  {
    v16 = &unk_286A5E1B0;
    v14 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v16 = &unk_286A5E3B0;
    *&v19[2] = v8;
    v20 = v10;
    if ((v19[1] & 0x80000000) != 0)
    {
      *&__p[8] = 14;
      v14 = *__p;
    }

    else
    {
      v19[1] = 14;
    }

    strcpy(v14, "Geofence Entry");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v16);
  }

  else
  {
    v16 = &unk_286A5E1B0;
    v15 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v16 = &unk_286A5E3D0;
    *&v19[2] = v8;
    v20 = v10;
    if ((v19[1] & 0x80000000) != 0)
    {
      *&__p[8] = 13;
      v15 = *__p;
    }

    else
    {
      v19[1] = 13;
    }

    strcpy(v15, "Geofence Exit");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v16);
  }

  v16 = &unk_286A5E1B0;
  if ((v19[1] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_2591A3B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerGeofenceEntryEvent::~CLMiLoLoiManagerGeofenceEntryEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerGeofenceExitEvent::~CLMiLoLoiManagerGeofenceExitEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::didRemoveGeofenceWithId(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = v4;
      v14 = 1025;
      v15 = a3;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, Failed to RemoveGeofence, regionId:%{private, location:escape_only}@, error code:%{private}d}", &v8, 0x22u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v8 = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = v4;
      v14 = 1025;
      v15 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, Failed to RemoveGeofence", "{msg%{public}.0s:#LOI Manager, Failed to RemoveGeofence, regionId:%{private, location:escape_only}@, error code:%{private}d}", &v8, 0x22u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289283;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = v4;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, didRemoveGeofenceWithId, regionId:%{private, location:escape_only}@}", &v8, 0x1Cu);
    }
  }
}

void ___ZN25CLMicroLocationLoiManager24startCustomLoiEntryTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 528) invalidate];
  v2 = *(v1 + 528);
  *(v1 + 528) = 0;

  CLMiLoLoiManagerEnteringCustomLoiTimeout::CLMiLoLoiManagerEnteringCustomLoiTimeout(v3);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((v1 + 16), v3);
  v3[0] = &unk_286A5E1B0;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }
}

void sub_2591A3ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerEnteringCustomLoiTimeout::~CLMiLoLoiManagerEnteringCustomLoiTimeout(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitEntryEvent,&CLMicroLocationLoiManager::VisitEntry>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, id *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::VisitEntry(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitEntryEvent,&CLMicroLocationLoiManager::VisitEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {
    CLMicroLocationLoiManager::handleEnableCustomLoi(a4, v6, a2[2]);
    *(a4 + 24) = 1;
  }

  else
  {
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v31.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v11 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v31;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v12;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v31.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v31;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v20;
      v38 = 2081;
      v39 = v21;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::DisableCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {
    CLMicroLocationLoiManager::handleDisableCustomLoi(a4, v6, a2[2], a2[3]);
    a4[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v31.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v11 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v31;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v12;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v31.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v31;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v20;
      v38 = 2081;
      v39 = v21;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::DisableCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntry>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiVisitEntry(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLeechedLocationEvent,&CLMicroLocationLoiManager::HandleLeechedLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerRefreshLocationOnEvent,&CLMicroLocationLoiManager::RefreshLocationOnInterval>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, void *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::RefreshLocationOnInterval(v6, a4);
  }

  else
  {
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v31.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v11 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v31;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v12;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v31.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v31;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v20;
      v38 = 2081;
      v39 = v21;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerRefreshLocationOnEvent,&CLMicroLocationLoiManager::RefreshLocationOnInterval>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::FetchPlaceInference(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitExitEvent,&CLMicroLocationLoiManager::VisitExit>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerLoiVisitExitEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::VisitExit(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitExitEvent,&CLMicroLocationLoiManager::VisitExit>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceExitEvent,&CLMicroLocationLoiManager::CustomLoiVisitExit>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerGeofenceExitEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiVisitExit(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceExitEvent,&CLMicroLocationLoiManager::CustomLoiVisitExit>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringHomeLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiDuringLoiEntry>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {
    v7 = a2[4];
    v8 = a2[5];
    CLMicroLocationLoiManager::resetLoiVariables(v6);
    *v48.data = v7;
    *&v48.data[8] = v8;
    CLMicroLocationLoiManager::handleEnableCustomLoi(a4, v6, v48);
    *(a4 + 24) = 1;
  }

  else
  {
    v32 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v6 + 24);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v34.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v13 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v34;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2081;
      v40 = v14;
      v41 = 2081;
      v42 = p_p;
      v43 = 2082;
      v44 = "assert";
      v45 = 2081;
      v46 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
    if (os_signpost_enabled(v17))
    {
      v18 = *(v6 + 24);
      if (*(v18 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v18 + 8), *(v18 + 16));
      }

      else
      {
        v19 = *(v18 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v18 + 24);
        *&v34.__r_.__value_.__l.__data_ = v19;
      }

      v20 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v21 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v22 = &v34;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2081;
      v40 = v22;
      v41 = 2081;
      v42 = v23;
      v43 = 2082;
      v44 = "assert";
      v45 = 2081;
      v46 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v25 = _CLLogObjectForCategory_MicroLocation_Default(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(v6 + 24);
      if (*(v26 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v26 + 8), *(v26 + 16));
      }

      else
      {
        v27 = *(v26 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v26 + 24);
        *&v34.__r_.__value_.__l.__data_ = v27;
      }

      v28 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v29 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v32, &__p);
      v30 = &v34;
      if (v28 < 0)
      {
        v30 = v29;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &__p;
      }

      else
      {
        v31 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2081;
      v40 = v30;
      v41 = 2081;
      v42 = v31;
      v43 = 2082;
      v44 = "assert";
      v45 = 2081;
      v46 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiDuringLoiEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryDuringLoiEntry>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uuid *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {
    CLMicroLocationLoiManager::handleCustomLoiVisitEntry(a4, v6, a2[2]);
    *(a4 + 24) = 1;
  }

  else
  {
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v31.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v11 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v31;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v12;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v31.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v31;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v20;
      v38 = 2081;
      v39 = v21;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryDuringLoiEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedLoiForLocationEvent,&CLMicroLocationLoiManager::LoiForGivenLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchLoiForLocationEvent,&CLMicroLocationLoiManager::LoiFetchFailure>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFailedToFetchLoiForLocationEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::LoiFetchFailure(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchLoiForLocationEvent,&CLMicroLocationLoiManager::LoiFetchFailure>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchedPlaceInference,&CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, id *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchedPlaceInference,&CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchPlaceInference,&CLMicroLocationLoiManager::FailedToFetchedPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFailedToFetchPlaceInference *a2@<X0>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::FailedToFetchedPlaceInference(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchPlaceInference,&CLMicroLocationLoiManager::FailedToFetchedPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedRelatedLoisEvent,&CLMicroLocationLoiManager::RelatedLois>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, __int128 **a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::RelatedLois(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedRelatedLoisEvent,&CLMicroLocationLoiManager::RelatedLois>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringCustomLoiState>::stateFunction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  *(v2 + 514) = 1;
  CLMicroLocationLoiManager::startCustomLoiEntryTimer(v2);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringCustomLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerEnableCustomLoiEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGotLocationUpdateEvent,&CLMicroLocationLoiManager::LocationUpdate>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, id *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::LocationUpdate(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 24);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 24);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGotLocationUpdateEvent,&CLMicroLocationLoiManager::LocationUpdate>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToGetLocationUpdateEvent,&CLMicroLocationLoiManager::FailureToGetLocationUpdate>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFailedToGetLocationUpdateEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::FailureToGetLocationUpdate(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToGetLocationUpdateEvent,&CLMicroLocationLoiManager::FailureToGetLocationUpdate>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerStartedActivatingGeofenceEvent,&CLMicroLocationLoiManager::GeofenceActivationStarted>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerStartedActivatingGeofenceEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::GeofenceActivationStarted(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerStartedActivatingGeofenceEvent,&CLMicroLocationLoiManager::GeofenceActivationStarted>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToSetGeofenceEvent,&CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, const CLMiLoLoiManagerFailedToSetGeofenceEvent *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation(v6, a2, a4);
  }

  else
  {
    v30 = lpsrc;
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v32.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v11 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v32;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v12;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v32.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v19 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v32;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v21;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToSetGeofenceEvent,&CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnteringCustomLoiTimeout,&CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = (a3 - 16);
  }

  else
  {
    v6 = 0;
  }

  {

    CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler(v6, a4);
  }

  else
  {
    v7 = _CLLogObjectForCategory_MicroLocation_Default(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(v6 + 3);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v31.__r_.__value_.__l.__data_ = v9;
      }

      v10 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v11 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v12 = &v31;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v12;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_signpost_enabled(v15))
    {
      v16 = *(v6 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v31.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v31;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v20;
      v38 = 2081;
      v39 = v21;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v6 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationStateMachine.h", 58, "stateFunction");
    __break(1u);
  }
}