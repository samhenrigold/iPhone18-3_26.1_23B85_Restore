uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v6 = (qword_1ED948490[*(a1 + 32)])();
  v7 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v9 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v10 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v9 & 1) != 0 || v10)
    {
      qword_1ED948898 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948890 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948888 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948880 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948878 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948870 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948868 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948860 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948858 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948850[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      v12 = (qword_1ED948850[*(a1 + 32)])(a1);
      v13 = (qword_1ED948850[*(a1 + 36)])(a1);
      if ((v12 & 1) == 0 && !v13)
      {
        return 1;
      }
    }

    if (*(a1 + 100) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
        v11 = *(a2 + 24);
        v30 = v11;
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_8:
          v43 = v29;
          v44.__r_.__value_.__r.__words[0] = v11;
          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_23;
        }
      }

      else
      {
        *&v29.__r_.__value_.__l.__data_ = *a2;
        v11 = *(a2 + 24);
        v29.__r_.__value_.__r.__words[2] = *(a2 + 16);
        v30 = v11;
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }
      }

      std::string::__init_copy_ctor_external(&v43, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      v11 = v30;
      v44.__r_.__value_.__r.__words[0] = v30;
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v47 = v43;
        __p.__r_.__value_.__r.__words[0] = v11;
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

LABEL_23:
      std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
      v11 = v44.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = v44.__r_.__value_.__r.__words[0];
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        v51 = v47;
        v52.__r_.__value_.__r.__words[0] = v11;
        *v55 = a1;
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          *&v55[8] = *&v51.__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[0] = v51.__r_.__value_.__r.__words[2];
          v56.__r_.__value_.__l.__size_ = v11;
          goto LABEL_27;
        }

LABEL_25:
        std::string::__init_copy_ctor_external(&v55[8], v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
        v56.__r_.__value_.__l.__size_ = v52.__r_.__value_.__r.__words[0];
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

LABEL_27:
        v56.__r_.__value_.__s.__data_[16] = 5;
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        *&v31 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v31 + 1) = 0;
        v32 = *v55;
        if (v56.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&v33, *&v55[8], *&v55[16]);
          *(&v34 + 1) = v56.__r_.__value_.__l.__size_;
          v35 = v56.__r_.__value_.__s.__data_[16];
          if (v56.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v55[8]);
          }
        }

        else
        {
          v33 = *&v55[8];
          v34 = *&v56.__r_.__value_.__l.__data_;
          v35 = v56.__r_.__value_.__s.__data_[16];
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        v38 = v31;
        v17 = v32;
        v39 = v32;
        if (SBYTE7(v34) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, v33, *(&v33 + 1));
          v17 = v39;
        }

        else
        {
          *&v40.__r_.__value_.__l.__data_ = v33;
          v40.__r_.__value_.__r.__words[2] = v34;
        }

        v18 = *(&v34 + 1);
        v41 = *(&v34 + 1);
        v19 = v35;
        v42 = v35;
        v36 = 0;
        *&v43.__r_.__value_.__l.__data_ = v38;
        v43.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v44, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
          v18 = v41;
          v19 = v42;
          v17 = v43.__r_.__value_.__r.__words[2];
        }

        else
        {
          v44 = v40;
        }

        v45 = v18;
        v46 = v19;
        *&v47.__r_.__value_.__l.__data_ = *&v43.__r_.__value_.__l.__data_;
        v47.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
          v18 = v45;
          v19 = v46;
          v17 = v47.__r_.__value_.__r.__words[2];
        }

        else
        {
          __p = v44;
        }

        v49 = v18;
        v50 = v19;
        *&v51.__r_.__value_.__l.__data_ = *&v47.__r_.__value_.__l.__data_;
        v51.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v18 = v49;
          v19 = v50;
          v17 = v51.__r_.__value_.__r.__words[2];
        }

        else
        {
          v52 = __p;
        }

        v53 = v18;
        v54 = v19;
        *v55 = *&v51.__r_.__value_.__l.__data_;
        *&v55[16] = v17;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v56, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
          v18 = v53;
          v19 = v54;
        }

        else
        {
          v56 = v52;
        }

        v57 = v18;
        v58 = v19;
        v20 = operator new(0x40uLL);
        *&v20->__r_.__value_.__l.__data_ = *v55;
        v20->__r_.__value_.__r.__words[2] = *&v55[16];
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v20;
          std::string::__init_copy_ctor_external(v20 + 1, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
          v22 = v58;
          v23 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
          v21[2].__r_.__value_.__r.__words[0] = v57;
          v21[2].__r_.__value_.__s.__data_[8] = v22;
          v37[0] = v21;
          if (v23 < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v20[1] = v56;
          v20[2].__r_.__value_.__r.__words[0] = v18;
          v20[2].__r_.__value_.__s.__data_[8] = v19;
          v37[0] = v20;
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_56:
            v36 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
            if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_73;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        v36 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_57:
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

LABEL_74:
          operator delete(v40.__r_.__value_.__l.__data_);
LABEL_58:
          v24 = *(a1 + 56);
          v25 = *(a1 + 48);
          v26 = 16 * (v24 - v25) - 1;
          if (v24 == v25)
          {
            v26 = 0;
          }

          v27 = *(a1 + 80) + *(a1 + 72);
          if (v26 == v27)
          {
            std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
            v25 = *(a1 + 48);
            v27 = *(a1 + 80) + *(a1 + 72);
          }

          v28 = (*(v25 + ((v27 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v27 & 0x7F));
          *v28 = 0;
          boost::function0<boost::msm::back::HandledEnum>::move_assign(v28, &v36);
          ++*(a1 + 80);
          if (v36)
          {
            if ((v36 & 1) == 0)
            {
              if (*v36)
              {
                (*v36)(v37, v37, 2);
              }
            }

            v36 = 0;
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(v33);
            if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return 1;
            }
          }

          else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return 1;
          }

          operator delete(v29.__r_.__value_.__l.__data_);
          return 1;
        }

LABEL_73:
        operator delete(v44.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

LABEL_24:
      std::string::__init_copy_ctor_external(&v51, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
      v11 = __p.__r_.__value_.__r.__words[0];
      v52.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
      *v55 = a1;
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

    *(a1 + 100) = 1;
    v14 = (*(&unk_1ED948D00 + *(a1 + 32) + 1))(a1, 0);
    result = (*(&unk_1ED948D00 + *(a1 + 36) + 1))(a1, 1) | v14;
    if (*(a1 + 101) != 1 || (a3) && !result)
    {
      v15 = result;
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 36));
      result = v15;
    }

    *(a1 + 100) = 0;
    if ((a3 & 6) == 0)
    {
      v16 = result;
      boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
      return v16;
    }
  }

  return result;
}

void sub_1E527A010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
LABEL_3:
    if (a61 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*(v62 - 168));
  if (a61 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if (a39 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if (a39 < 0)
  {
LABEL_6:
    operator delete(a34);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53904B7 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53904B7 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E527AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)32>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 100);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v7 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", *(a1 + 100), *(a4 + 28), *(a1 + 96));
    v7 = gBBULogMaskGet(void)::once == -1;
  }

  v8 = *(a4 + 28);
  v10 = *(a1 + 96);
  v9 = *(a1 + 100);
  if (v9 >= v8)
  {
    v9 = *(a4 + 28);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v10 + 1;
  *(a1 + 96) = v10 + 1;
  if (v7)
  {
    v13 = *gBBULogMaskGet(void)::sBBULogMask;
    v14 = gBBULogVerbosity;
    if (v12 > v11)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v13 & 0x200000) != 0 && (v14 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n");
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v18 = off_1ED944120;
    if (!off_1ED944120)
    {
      v19 = operator new(0x38uLL);
      v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v21 = dispatch_queue_create("BBUError", v20);
      *v19 = 0;
      v19[1] = 0;
      v19[2] = v21;
      if (v21)
      {
        v22 = v21;
        dispatch_retain(v21);
        v19[3] = 0;
        dispatch_release(v22);
      }

      else
      {
        v19[3] = 0;
      }

      v19[4] = 0;
      v19[5] = 0;
      v19[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v19);
      v23 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v24 = *(&off_1ED944120 + 1);
      off_1ED944120 = v23;
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v18 = off_1ED944120;
    }

    v26 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v28[3] = &__block_descriptor_tmp_9;
    v28[4] = v18;
    v29 = v28;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v31 = &__block_descriptor_tmp_13_0;
    v32 = v18;
    v33 = &v29;
    v27 = *(v18 + 16);
    if (*(v18 + 24))
    {
      dispatch_async_and_wait(v27, &block);
      if (!v26)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v27, &block);
      if (!v26)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", *(a1 + 96), v11);
        }
      }
    }

    BBUpdaterController::personalize(*(a1 + 16), 32);
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v13 = *gBBULogMaskGet(void)::sBBULogMask;
  v14 = gBBULogVerbosity;
  if (v12 <= v11)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v13 & 2) != 0 && (v14 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", v11);
  }

  v15 = *(a1 + 16);
  v16 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v31 = v16;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v15, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::performAction<(BBUStage)4>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 120) = 0;
  *(v3 + 24) = 1;
  BBUpdaterController::personalize(*(a1 + 16), 4);
  *(v3 + 24) = 1;
  ++*(a1 + 108);
  *(v3 + 24) = 2;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::performAction<(BBUStage)2>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 132) = 0;
  *(v3 + 24) = 0;
  BBUpdaterController::personalize(*(a1 + 16), 2);
  *(v3 + 24) = 0;
  ++*(a1 + 120);
  *(v3 + 24) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::startProvision,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 108) = 0;
  *(v3 + 24) = 0;
  BBUpdaterController::provision(*(a1 + 16), 1);
  *(v3 + 24) = 0;
  ++*(a1 + 96);
  *(v3 + 24) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 280, a4))
  {
    v6 = (_MergedGlobals_1[*(a1 + 304) + 53])(a1 + 280, 0);
    v7 = v6;
    if ((*(a1 + 369) & 1) == 0 && !v6)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a2))
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 53])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v20 = v4;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v33 = v19;
        v34.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v19.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v19.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v20 = v4;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v33, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    v4 = v20;
    v34.__r_.__value_.__r.__words[0] = v20;
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v37 = v33;
      v38.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v37, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    v4 = v34.__r_.__value_.__r.__words[0];
    v38.__r_.__value_.__r.__words[0] = v34.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v41 = v37;
      v42.__r_.__value_.__r.__words[0] = v4;
      *v45 = a1;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v41, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    v4 = v38.__r_.__value_.__r.__words[0];
    v42.__r_.__value_.__r.__words[0] = v38.__r_.__value_.__r.__words[0];
    *v45 = a1;
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v45[8] = *&v41.__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[0] = v41.__r_.__value_.__r.__words[2];
      v46.__r_.__value_.__l.__size_ = v4;
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v45[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    v46.__r_.__value_.__l.__size_ = v42.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v21 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v21 + 1) = 0;
        v22 = *v45;
        if (v46.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v45[8], *&v45[16]);
          *(&v24 + 1) = v46.__r_.__value_.__l.__size_;
          v25 = v46.__r_.__value_.__s.__data_[16];
          if (v46.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v45[8]);
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v28 = v21;
              v6 = v22;
              v29 = v22;
              if (SBYTE7(v24) < 0)
              {
                std::string::__init_copy_ctor_external(&v30, __p, *(&__p + 1));
                v6 = v29;
              }

              else
              {
                *&v30.__r_.__value_.__l.__data_ = __p;
                v30.__r_.__value_.__r.__words[2] = v24;
              }

              v7 = *(&v24 + 1);
              v31 = *(&v24 + 1);
              v8 = v25;
              v32 = v25;
              v26 = 0;
              *&v33.__r_.__value_.__l.__data_ = v28;
              v33.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v34, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
                v7 = v31;
                v8 = v32;
                v6 = v33.__r_.__value_.__r.__words[2];
              }

              else
              {
                v34 = v30;
              }

              v35 = v7;
              v36 = v8;
              *&v37.__r_.__value_.__l.__data_ = *&v33.__r_.__value_.__l.__data_;
              v37.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
                v7 = v35;
                v8 = v36;
                v6 = v37.__r_.__value_.__r.__words[2];
              }

              else
              {
                v38 = v34;
              }

              v39 = v7;
              v40 = v8;
              *&v41.__r_.__value_.__l.__data_ = *&v37.__r_.__value_.__l.__data_;
              v41.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                v7 = v39;
                v8 = v40;
                v6 = v41.__r_.__value_.__r.__words[2];
              }

              else
              {
                v42 = v38;
              }

              v43 = v7;
              v44 = v8;
              *v45 = *&v41.__r_.__value_.__l.__data_;
              *&v45[16] = v6;
              if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v46, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
                v7 = v43;
                v8 = v44;
              }

              else
              {
                v46 = v42;
              }

              v47 = v7;
              v48 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v45;
              v9->__r_.__value_.__r.__words[2] = *&v45[16];
              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
                v11 = v48;
                v12 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v47;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v27[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v46;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v27[0] = v9;
                if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v42.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v38.__r_.__value_.__l.__data_);
                    v26 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v34.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v30.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 48);
                    v14 = *(a1 + 40);
                    v15 = 16 * (v13 - v14) - 1;
                    if (v13 == v14)
                    {
                      v15 = 0;
                    }

                    v16 = *(a1 + 72) + *(a1 + 64);
                    if (v15 == v16)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
                      v14 = *(a1 + 40);
                      v16 = *(a1 + 72) + *(a1 + 64);
                    }

                    v17 = (*(v14 + ((v16 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v16 & 0x7F));
                    *v17 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v17, &v26);
                    ++*(a1 + 72);
                    if (v26)
                    {
                      if ((v26 & 1) == 0 && *v26)
                      {
                        (*v26)(v27, v27, 2);
                      }

                      v26 = 0;
                    }

                    if (SBYTE7(v24) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v19.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v26 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v45[8];
          v24 = *&v46.__r_.__value_.__l.__data_;
          v25 = v46.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v33.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v37.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_1E527B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53905ABLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53905ABLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E527C2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 144, a4))
  {
    v6 = (_MergedGlobals_1[*(a1 + 168) + 30])(a1 + 144, 0);
    v7 = v6;
    if ((*(a1 + 233) & 1) == 0 && !v6)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 144, a1 + 144, *(a1 + 168));
    }

    *(a1 + 232) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 144);
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 4 * a2 + 32) = 5;
  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a2))
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 30])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v20 = v4;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v33 = v19;
        v34.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v19.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v19.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v20 = v4;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v33, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    v4 = v20;
    v34.__r_.__value_.__r.__words[0] = v20;
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v37 = v33;
      v38.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v37, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    v4 = v34.__r_.__value_.__r.__words[0];
    v38.__r_.__value_.__r.__words[0] = v34.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v41 = v37;
      v42.__r_.__value_.__r.__words[0] = v4;
      *v45 = a1;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v41, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    v4 = v38.__r_.__value_.__r.__words[0];
    v42.__r_.__value_.__r.__words[0] = v38.__r_.__value_.__r.__words[0];
    *v45 = a1;
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v45[8] = *&v41.__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[0] = v41.__r_.__value_.__r.__words[2];
      v46.__r_.__value_.__l.__size_ = v4;
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v45[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    v46.__r_.__value_.__l.__size_ = v42.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v21 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v21 + 1) = 0;
        v22 = *v45;
        if (v46.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v45[8], *&v45[16]);
          *(&v24 + 1) = v46.__r_.__value_.__l.__size_;
          v25 = v46.__r_.__value_.__s.__data_[16];
          if (v46.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v45[8]);
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v28 = v21;
              v6 = v22;
              v29 = v22;
              if (SBYTE7(v24) < 0)
              {
                std::string::__init_copy_ctor_external(&v30, __p, *(&__p + 1));
                v6 = v29;
              }

              else
              {
                *&v30.__r_.__value_.__l.__data_ = __p;
                v30.__r_.__value_.__r.__words[2] = v24;
              }

              v7 = *(&v24 + 1);
              v31 = *(&v24 + 1);
              v8 = v25;
              v32 = v25;
              v26 = 0;
              *&v33.__r_.__value_.__l.__data_ = v28;
              v33.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v34, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
                v7 = v31;
                v8 = v32;
                v6 = v33.__r_.__value_.__r.__words[2];
              }

              else
              {
                v34 = v30;
              }

              v35 = v7;
              v36 = v8;
              *&v37.__r_.__value_.__l.__data_ = *&v33.__r_.__value_.__l.__data_;
              v37.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
                v7 = v35;
                v8 = v36;
                v6 = v37.__r_.__value_.__r.__words[2];
              }

              else
              {
                v38 = v34;
              }

              v39 = v7;
              v40 = v8;
              *&v41.__r_.__value_.__l.__data_ = *&v37.__r_.__value_.__l.__data_;
              v41.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                v7 = v39;
                v8 = v40;
                v6 = v41.__r_.__value_.__r.__words[2];
              }

              else
              {
                v42 = v38;
              }

              v43 = v7;
              v44 = v8;
              *v45 = *&v41.__r_.__value_.__l.__data_;
              *&v45[16] = v6;
              if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v46, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
                v7 = v43;
                v8 = v44;
              }

              else
              {
                v46 = v42;
              }

              v47 = v7;
              v48 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v45;
              v9->__r_.__value_.__r.__words[2] = *&v45[16];
              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
                v11 = v48;
                v12 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v47;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v27[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v46;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v27[0] = v9;
                if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v42.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v38.__r_.__value_.__l.__data_);
                    v26 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v34.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v30.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 48);
                    v14 = *(a1 + 40);
                    v15 = 16 * (v13 - v14) - 1;
                    if (v13 == v14)
                    {
                      v15 = 0;
                    }

                    v16 = *(a1 + 72) + *(a1 + 64);
                    if (v15 == v16)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
                      v14 = *(a1 + 40);
                      v16 = *(a1 + 72) + *(a1 + 64);
                    }

                    v17 = (*(v14 + ((v16 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v16 & 0x7F));
                    *v17 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v17, &v26);
                    ++*(a1 + 72);
                    if (v26)
                    {
                      if ((v26 & 1) == 0 && *v26)
                      {
                        (*v26)(v27, v27, 2);
                      }

                      v26 = 0;
                    }

                    if (SBYTE7(v24) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v19.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v26 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v45[8];
          v24 = *&v46.__r_.__value_.__l.__data_;
          v25 = v46.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v33.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v46.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v37.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_1E527CB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53906ADLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53906ADLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E527D520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformCoreDump>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9
      || (qword_1ED9488E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          qword_1ED9488A0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false,
          v16 = (qword_1ED9488A0[*(a1 + 32)])(a1),
          v17 = (qword_1ED9488A0[*(a1 + 36)])(a1),
          (v16 & 1) != 0)
      || v17)
    {
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 56);
        v12 = *(a1 + 48);
        v13 = 16 * (v11 - v12) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v21 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v22[0] = v10;
        if (v11 == v12)
        {
          v13 = 0;
        }

        v14 = *(a1 + 80) + *(a1 + 72);
        if (v13 == v14)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v12 = *(a1 + 48);
          v14 = *(a1 + 80) + *(a1 + 72);
        }

        v15 = (*(v12 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F));
        *v15 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v15, &v21);
        ++*(a1 + 80);
        if (v21 && (v21 & 1) == 0)
        {
          if (*v21)
          {
            (*v21)(v22, v22, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v18 = (*(&unk_1ED948D58 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948D58 + *(a1 + 36) + 1))(a1, 1) | v18;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v19 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(a1, a1, *(a1 + 36));
          result = v19;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v20 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v20;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53907E1 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53907E1 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E527E328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformCoreDump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::collectDump,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 452) = 0;
  *(a1 + 32 + 4 * a2) = 0;
  v5 = *(a1 + 16);
  if (BBUpdaterController::collectCoredumpInternal(v5))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_3;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 657, "kBBUReturnSuccess == ret");
    }
  }

  else
  {
    CFDictionarySetValue(v5[4], @"done", *MEMORY[0x1E695E4D0]);
  }

LABEL_3:
  *(v4 + 4 * a2) = 0;
  ++*(a1 + 112);
  *(v4 + 4 * a2) = 8;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformBootup>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9
      || (qword_1ED948938 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948930 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948928 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948920 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948918 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948910 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948908 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED948900 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED9488F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          qword_1ED9488F0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false,
          v16 = (qword_1ED9488F0[*(a1 + 32)])(a1),
          v17 = (qword_1ED9488F0[*(a1 + 36)])(a1),
          (v16 & 1) != 0)
      || v17)
    {
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 56);
        v12 = *(a1 + 48);
        v13 = 16 * (v11 - v12) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformBootup>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v21 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v22[0] = v10;
        if (v11 == v12)
        {
          v13 = 0;
        }

        v14 = *(a1 + 80) + *(a1 + 72);
        if (v13 == v14)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v12 = *(a1 + 48);
          v14 = *(a1 + 80) + *(a1 + 72);
        }

        v15 = (*(v12 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F));
        *v15 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v15, &v21);
        ++*(a1 + 80);
        if (v21 && (v21 & 1) == 0)
        {
          if (*v21)
          {
            (*v21)(v22, v22, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v18 = (*(&unk_1ED948DB0 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948DB0 + *(a1 + 36) + 1))(a1, 1) | v18;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v19 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(a1, a1, *(a1 + 36));
          result = v19;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v20 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v20;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390906 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390906 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E527F260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformBootup,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<false>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 452) = 0;
  *(v3 + 32) = 0;
  BBUpdaterController::bootup(*(a1 + 16));
  *(v3 + 32) = 0;
  ++*(a1 + 440);
  *(v3 + 32) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9
      || (qword_1ED948988 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948980 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948978 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948970 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948968 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948960 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948958 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948950 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948948 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          qword_1ED948940[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false,
          v16 = (qword_1ED948940[*(a1 + 32)])(a1),
          v17 = (qword_1ED948940[*(a1 + 36)])(a1),
          (v16 & 1) != 0)
      || v17)
    {
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 56);
        v12 = *(a1 + 48);
        v13 = 16 * (v11 - v12) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v21 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v22[0] = v10;
        if (v11 == v12)
        {
          v13 = 0;
        }

        v14 = *(a1 + 80) + *(a1 + 72);
        if (v13 == v14)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v12 = *(a1 + 48);
          v14 = *(a1 + 80) + *(a1 + 72);
        }

        v15 = (*(v12 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F));
        *v15 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v15, &v21);
        ++*(a1 + 80);
        if (v21 && (v21 & 1) == 0)
        {
          if (*v21)
          {
            (*v21)(v22, v22, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v18 = (*(&unk_1ED948E08 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948E08 + *(a1 + 36) + 1))(a1, 1) | v18;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v19 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(a1, a1, *(a1 + 36));
          result = v19;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v20 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v20;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390A30 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390A30 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v56, 170, sizeof(v56));
  (*(*a1 + 24))(v56);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)");
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v7;
  v54[8] = v7;
  v54[5] = v7;
  v54[6] = v7;
  v54[3] = v7;
  v54[4] = v7;
  v54[1] = v7;
  v54[2] = v7;
  v53 = v7;
  v54[0] = v7;
  *__p = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v56[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v56[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v45[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v45, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v24 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v24 = *(&v50 + 1);
    }

    v25 = v50;
    v22 = v24 - v50;
    if ((v24 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v48 + 1);
    v22 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28);
  }

LABEL_28:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v29;
  *&v45[16] = v29;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v30 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v30 = *(&v50 + 1);
    }

    v31 = v50;
    v32 = v30 - v50;
    if ((v30 - v50) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      HIBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      goto LABEL_37;
    }

    v31 = *(&v48 + 1);
    v32 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v33 = operator new(v35);
    *(&v43 + 1) = v32;
    v44 = v35 | 0x8000000000000000;
    *&v43 = v33;
  }

  else
  {
    HIBYTE(v44) = v32;
    v33 = &v43;
    if (!v32)
    {
      LOBYTE(v43) = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v36 = v43;
      std::string::__init_copy_ctor_external(v45, v43, *(&v43 + 1));
      *&v45[24] = 44;
      operator delete(v36);
      v34 = *(a2 + 16);
      if ((v45[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v33, v31, v32);
  *(v33 + v32) = 0;
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v45 = v43;
  *&v45[16] = v44;
  *&v45[24] = 44;
  v34 = *(a2 + 16);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_38:
    v42 = *v45;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v42, *v45, *&v45[8]);
LABEL_46:
  BBUpdaterController::handleError(v34, &v42, *&v45[24]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v45);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v45[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v54);
  v37 = v56[0];
  if (v56[0])
  {
    v38 = v56[1];
    v39 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v56[0];
    }

    v56[1] = v37;
    operator delete(v39);
  }
}

void sub_1E52800C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 452) = 0;
  *(v3 + 32) = 0;
  BBUpdaterController::checkManifest(*(a1 + 16));
  *(v3 + 32) = 0;
  ++*(a1 + 428);
  *(v3 + 32) = 2;
  return 1;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_434()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void __cxx_global_var_init_435()
{
  if ((byte_1ED9482D8 & 1) == 0)
  {
    byte_1ED9482D8 = 1;
    qword_1ED9489E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED948998 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::handleError,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_436()
{
  if ((byte_1ED9482E0 & 1) == 0)
  {
    byte_1ED9482E0 = 1;
    qword_1ED9483E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    unk_1ED9483E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9483D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9483D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::skipPersonalize,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_437()
{
  if ((byte_1ED9482E8 & 1) == 0)
  {
    byte_1ED9482E8 = 1;
    qword_1ED948A38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9489F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9489F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>::execute;
  }
}

void __cxx_global_var_init_438()
{
  if ((byte_1ED9482F0 & 1) == 0)
  {
    byte_1ED9482F0 = 1;
    qword_1ED948410 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948408 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948400 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED9483F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
  }
}

void __cxx_global_var_init_439()
{
  if ((byte_1ED9482F8 & 1) == 0)
  {
    byte_1ED9482F8 = 1;
    qword_1ED948A90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>::execute;
    qword_1ED948A68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventRetry,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
    qword_1ED948A58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948A50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<true>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
  }
}

void __cxx_global_var_init_440()
{
  if ((byte_1ED948300 & 1) == 0)
  {
    byte_1ED948300 = 1;
    qword_1ED948AE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventContinue,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_441()
{
  if ((byte_1ED948308 & 1) == 0)
  {
    byte_1ED948308 = 1;
    qword_1ED948B40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948AF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventRepersonalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRePerso>>::execute;
  }
}

void __cxx_global_var_init_442()
{
  if ((byte_1ED948310 & 1) == 0)
  {
    byte_1ED948310 = 1;
    qword_1ED948B98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute;
    qword_1ED948B68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_443()
{
  if ((byte_1ED948318 & 1) == 0)
  {
    byte_1ED948318 = 1;
    qword_1ED948430 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948438 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)32>,boost::msm::front::none>>::execute;
    qword_1ED948428 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)4>,boost::msm::front::none>>::execute;
    qword_1ED948420 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_444()
{
  if ((byte_1ED948320 & 1) == 0)
  {
    byte_1ED948320 = 1;
    qword_1ED9483A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED9483A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::gatherParam,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_445()
{
  if ((byte_1ED948328 & 1) == 0)
  {
    byte_1ED948328 = 1;
    qword_1ED948BF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute;
    qword_1ED948BD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute;
    qword_1ED948BA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_446()
{
  if ((byte_1ED948330 & 1) == 0)
  {
    byte_1ED948330 = 1;
    qword_1ED948460 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948448 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    unk_1ED948450 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948458 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::performAction<(BBUStage)32>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_447()
{
  if ((byte_1ED948338 & 1) == 0)
  {
    byte_1ED948338 = 1;
    qword_1ED948C48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>::execute;
  }
}

void __cxx_global_var_init_448()
{
  if ((byte_1ED948340 & 1) == 0)
  {
    byte_1ED948340 = 1;
    qword_1ED948CA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::ControllerFSM_TOP::fuse,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_449()
{
  if ((byte_1ED948348 & 1) == 0)
  {
    byte_1ED948348 = 1;
    qword_1ED948CF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_450()
{
  if ((byte_1ED948350 & 1) == 0)
  {
    byte_1ED948350 = 1;
    qword_1ED948480 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948488 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)32>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948478 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::performAction<(BBUStage)4>,boost::msm::front::none>>::execute;
    qword_1ED948470 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::performAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_451()
{
  if ((byte_1ED948358 & 1) == 0)
  {
    byte_1ED948358 = 1;
    qword_1ED9483C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::finishProvision,boost::msm::front::none>>::execute;
    qword_1ED9483B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::startProvision,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_452()
{
  if ((byte_1ED948360 & 1) == 0)
  {
    byte_1ED948360 = 1;
    qword_1ED948D50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute;
    qword_1ED948D30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute;
  }
}

void __cxx_global_var_init_453()
{
  if ((byte_1ED948368 & 1) == 0)
  {
    byte_1ED948368 = 1;
    qword_1ED948DA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948DA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformCoreDump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::collectDump,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_454()
{
  if ((byte_1ED948370 & 1) == 0)
  {
    byte_1ED948370 = 1;
    qword_1ED948E00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformBootup,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<false>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_455()
{
  if ((byte_1ED948378 & 1) == 0)
  {
    byte_1ED948378 = 1;
    qword_1ED948E58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,boost::msm::front::none>>::execute;
  }
}

uint64_t eUICC::detail::StateMachine::Run(unsigned int *a1, void *a2, uint64_t a3, const __CFDictionary **a4)
{
  v103 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v67 = v7;
  v68 = v7;
  v66 = v7;
  v8 = *a4;
  v65 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  eUICC::Options::Options(&v66, &v65);
  if (v8)
  {
    CFRelease(v8);
  }

  if (BYTE10(v68) & 1) != 0 || (BYTE10(v66))
  {
    v9 = 0;
  }

  else
  {
    v9 = BYTE11(v66) ^ 1u;
  }

  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a3 + 184))(&v61, a3);
  eUICC::Source::CreateFromZip(&v61, &v63);
  v10 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = &unk_1ED949000;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  eUICC::Options::ToString(&__p, &v66);
  if (SHIBYTE(v74) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Options:\n%s\n", p_p);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(__p);
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v14 = v66;
  v15 = BYTE9(v68);
  v16 = capabilities::radio::maverick(v13);
  if (v16)
  {
    v17 = operator new(0x138uLL);
    v17[289] = 0;
    *v17 = &unk_1F5F06980;
    *(v17 + 37) = a2;
    *(v17 + 73) = v14;
    v17[290] = v15;
    v17[304] = 15;
    v60 = v17;
    v18 = *a1;
    *a1 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (!capabilities::radio::ice(v16))
  {
    v60 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      v51 = *a1;
      if (v51 <= 9)
      {
LABEL_119:
        v52 = (&off_1E876DE60)[v51];
LABEL_125:
        _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Fatal Error: Error creating vinyl valve! Current State: %s\n", v52);
        *a1 = 8;
        v41 = 9;
LABEL_126:
        if (v11[396] != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "ret = %d\n", v41);
        v55 = v60;
        v60 = 0;
        if (!v55)
        {
          goto LABEL_130;
        }

LABEL_129:
        (*(*v55 + 96))(v55);
        goto LABEL_130;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v51 = *a1;
      if (v51 <= 9)
      {
        goto LABEL_119;
      }
    }

    v52 = "??????";
    goto LABEL_125;
  }

  v22 = operator new(0x140uLL);
  eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v22, a2, v14, v15);
  v60 = v22;
  v18 = *a1;
  *a1 = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
LABEL_21:
    if (v18 <= 9)
    {
      goto LABEL_22;
    }

LABEL_27:
    v19 = "??????";
    v20 = *a1;
    if (v20 > 9)
    {
      goto LABEL_23;
    }

LABEL_28:
    v21 = (&off_1E876DE60)[v20];
    goto LABEL_29;
  }

LABEL_26:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if (v18 > 9)
  {
    goto LABEL_27;
  }

LABEL_22:
  v19 = (&off_1E876DE60)[v18];
  v20 = *a1;
  if (v20 <= 9)
  {
    goto LABEL_28;
  }

LABEL_23:
  v21 = "??????";
LABEL_29:
  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Resetting state machine: %s --> %s\n", v19, v21);
  while (1)
  {
    if (*a1 > 7)
    {
      v41 = 0;
      goto LABEL_126;
    }

    if (v11[396] == -1)
    {
      v23 = *a1;
      v24 = "??????";
      if (v23 > 9)
      {
        goto LABEL_35;
      }

LABEL_34:
      v24 = (&off_1E876DE60)[v23];
      goto LABEL_35;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v23 = *a1;
    v24 = "??????";
    if (v23 <= 9)
    {
      goto LABEL_34;
    }

LABEL_35:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Running at state %s\n", v24);
    v59 = v9;
    v25 = v63;
    v26 = v64;
    if (v64)
    {
      atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
    }

    v71 = 8;
    LODWORD(__p) = 0;
    v73 = &unk_1F5EFFAE0;
    v74 = eUICC::detail::StateMachine::Start;
    v75 = &v73;
    v76 = 3;
    v77[0] = &unk_1F5EFFAE0;
    v77[1] = eUICC::detail::StateMachine::Perso;
    v78 = v77;
    v79 = 1;
    v80[0] = &unk_1F5EFFAE0;
    v80[1] = eUICC::detail::StateMachine::Recovery;
    v81 = v80;
    v82 = 2;
    v83[0] = &unk_1F5EFFAE0;
    v83[1] = eUICC::detail::StateMachine::VersionCheck;
    v84 = v83;
    v85 = 4;
    v86[0] = &unk_1F5EFFAE0;
    v86[1] = eUICC::detail::StateMachine::UpdateGold;
    v87 = v86;
    v88 = 5;
    v89[0] = &unk_1F5EFFAE0;
    v89[1] = eUICC::detail::StateMachine::UpdateMain;
    v90 = v89;
    v91 = 6;
    v92[0] = &unk_1F5EFFAE0;
    v92[1] = eUICC::detail::StateMachine::PostProcess;
    v93 = v92;
    v94 = 7;
    v95[0] = &unk_1F5EFFAE0;
    v95[1] = eUICC::detail::StateMachine::Retry;
    v96 = v95;
    v97 = 8;
    v99 = 0;
    v100 = 9;
    v102 = 0;
    v70[0] = 0;
    v70[1] = 0;
    v69 = v70;
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, 0, &__p);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v76, &v76);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v79, &v79);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v82, &v82);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v85, &v85);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v88, &v88);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v91, &v91);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v94, &v94);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v97, &v97);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v69, v70, v100, &v100);
    if (v102 == &v101)
    {
      (*(*v102 + 32))(v102);
      v27 = v99;
      if (v99 == v98)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v102)
      {
        (*(*v102 + 40))();
      }

      v27 = v99;
      if (v99 == v98)
      {
LABEL_70:
        (*(*v27 + 32))(v27);
        v28 = v96;
        if (v96 == v95)
        {
          goto LABEL_71;
        }

        goto LABEL_44;
      }
    }

    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    v28 = v96;
    if (v96 == v95)
    {
LABEL_71:
      (*(*v28 + 32))(v28);
      v29 = v93;
      if (v93 == v92)
      {
        goto LABEL_72;
      }

      goto LABEL_47;
    }

LABEL_44:
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    v29 = v93;
    if (v93 == v92)
    {
LABEL_72:
      (*(*v29 + 32))(v29);
      v30 = v90;
      if (v90 == v89)
      {
        goto LABEL_73;
      }

      goto LABEL_50;
    }

LABEL_47:
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    v30 = v90;
    if (v90 == v89)
    {
LABEL_73:
      (*(*v30 + 32))(v30);
      v31 = v87;
      if (v87 == v86)
      {
        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_50:
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    v31 = v87;
    if (v87 == v86)
    {
LABEL_74:
      (*(*v31 + 32))(v31);
      v32 = v84;
      if (v84 == v83)
      {
        goto LABEL_75;
      }

      goto LABEL_56;
    }

LABEL_53:
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = v84;
    if (v84 == v83)
    {
LABEL_75:
      (*(*v32 + 32))(v32);
      v33 = v81;
      if (v81 == v80)
      {
        goto LABEL_76;
      }

      goto LABEL_59;
    }

LABEL_56:
    if (v32)
    {
      (*(*v32 + 40))(v32);
    }

    v33 = v81;
    if (v81 == v80)
    {
LABEL_76:
      (*(*v33 + 32))(v33);
      v34 = v78;
      if (v78 == v77)
      {
        goto LABEL_77;
      }

      goto LABEL_62;
    }

LABEL_59:
    if (v33)
    {
      (*(*v33 + 40))(v33);
    }

    v34 = v78;
    if (v78 == v77)
    {
LABEL_77:
      (*(*v34 + 32))(v34);
      v35 = v75;
      if (v75 == &v73)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

LABEL_62:
    if (v34)
    {
      (*(*v34 + 40))(v34);
    }

    v35 = v75;
    if (v75 == &v73)
    {
LABEL_78:
      (*(*v35 + 4))(v35);
      v36 = v70[0];
      if (!v70[0])
      {
        goto LABEL_141;
      }

      goto LABEL_79;
    }

LABEL_65:
    if (v35)
    {
      (*(*v35 + 5))(v35);
    }

    v36 = v70[0];
    if (!v70[0])
    {
LABEL_141:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x92u, "Assertion failure(((stateMap.end() != def) && def->second) && StateMachine is corrupted.)");
    }

LABEL_79:
    v37 = *a1;
    v38 = v70;
    do
    {
      if (*(v36 + 8) >= v37)
      {
        v38 = v36;
      }

      v36 = v36[*(v36 + 8) < v37];
    }

    while (v36);
    if (v38 == v70)
    {
      goto LABEL_141;
    }

    if (v37 < *(v38 + 8))
    {
      goto LABEL_141;
    }

    v39 = v38[8];
    if (!v39)
    {
      goto LABEL_141;
    }

    __p = v25;
    v73 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = v38[8];
      if (!v39)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    v40 = v11;
    v41 = (*(*v39 + 48))(v39, &__p, &v66, &v71, &v60);
    v42 = v73;
    if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    v11 = v40;
    if (v40[396] == -1)
    {
      v43 = *a1;
      v44 = "??????";
      if (v43 > 9)
      {
        goto LABEL_94;
      }

LABEL_93:
      v44 = (&off_1E876DE60)[v43];
      goto LABEL_94;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v43 = *a1;
    v44 = "??????";
    if (v43 <= 9)
    {
      goto LABEL_93;
    }

LABEL_94:
    v45 = "??????";
    if (v71 <= 9)
    {
      v45 = (&off_1E876DE60)[v71];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Ret %d from state %s next %s\n", v41, v44, v45);
    v46 = v41 == 45 || v41 == 0;
    v47 = v71;
    if (!v46)
    {
      v47 = 8;
    }

    *a1 = v47;
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(v70[0]);
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v48 = v40[396];
    if (v41 == 45)
    {
      break;
    }

    if (v48 != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v9 = v59;
      v49 = *a1;
      v50 = "??????";
      if (v49 > 9)
      {
        goto LABEL_108;
      }

LABEL_107:
      v50 = (&off_1E876DE60)[v49];
      goto LABEL_108;
    }

    v9 = v59;
    v49 = *a1;
    v50 = "??????";
    if (v49 <= 9)
    {
      goto LABEL_107;
    }

LABEL_108:
    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Result %d next state %s allowRetry %d\n", v41, v50, v9 & 1);
    if (((v41 != 0) & v9) == 1)
    {
      v41 = 0;
      v9 = 0;
      *a1 = 7;
    }

    if (v41)
    {
      goto LABEL_126;
    }
  }

  if (v48 == -1)
  {
    v53 = *a1;
    if (v53 <= 9)
    {
      goto LABEL_122;
    }

LABEL_138:
    v54 = "??????";
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v53 = *a1;
    if (v53 > 9)
    {
      goto LABEL_138;
    }

LABEL_122:
    v54 = (&off_1E876DE60)[v53];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "eUICC -- back to host to personalize in state %s\n", v54);
  v41 = 0;
  v55 = v60;
  v60 = 0;
  if (v55)
  {
    goto LABEL_129;
  }

LABEL_130:
  v56 = v64;
  if (v64 && !atomic_fetch_add((v64 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
    if (SBYTE7(v68) < 0)
    {
LABEL_133:
      operator delete(v67[0]);
    }
  }

  else if (SBYTE7(v68) < 0)
  {
    goto LABEL_133;
  }

  return v41;
}

void sub_1E5281A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  operator delete(v47);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::Start(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v11 + 10) = v6;
  v10[15] = v6;
  v11[0] = v6;
  v10[13] = v6;
  v10[14] = v6;
  v10[11] = v6;
  v10[12] = v6;
  v10[9] = v6;
  v10[10] = v6;
  v10[7] = v6;
  v10[8] = v6;
  v10[5] = v6;
  v10[6] = v6;
  v10[3] = v6;
  v10[4] = v6;
  v10[1] = v6;
  v10[2] = v6;
  v10[0] = v6;
  (*(**a4 + 8))(v10);
  v7 = eUICC::HowToProceed(v10, a2);
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v9 = 9;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    if (!v7)
    {
      return 18;
    }

    v9 = 3;
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t eUICC::detail::StateMachine::Perso(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v15 + 10) = v7;
  v14 = v7;
  v15[0] = v7;
  v13[13] = v7;
  v13[14] = v7;
  v13[11] = v7;
  v13[12] = v7;
  v13[9] = v7;
  v13[10] = v7;
  v13[7] = v7;
  v13[8] = v7;
  v13[5] = v7;
  v13[6] = v7;
  v13[3] = v7;
  v13[4] = v7;
  v13[1] = v7;
  v13[2] = v7;
  v13[0] = v7;
  (*(**a4 + 8))(v13);
  if (BYTE4(v13[0]) == 1 || *(a2 + 40) == 1)
  {
    memset(&__p, 170, sizeof(__p));
    eUICC::Firmware::BootloaderVersion(&__p, v14, BYTE1(v14));
    result = eUICC::Perso::Perform(a2, &__p, a4);
    v9 = *a4;
    *(v9 + 8) = 0u;
    v9 = (v9 + 8);
    v9[15] = 0u;
    v9[16] = 0u;
    v9[13] = 0u;
    v9[14] = 0u;
    v9[11] = 0u;
    v9[12] = 0u;
    v9[9] = 0u;
    v9[10] = 0u;
    v9[7] = 0u;
    v9[8] = 0u;
    v9[5] = 0u;
    v9[6] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    *(v9 + 266) = 0u;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      result = v10;
    }
  }

  else
  {
    result = 0;
  }

  if (*(a2 + 9))
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  *a3 = v11;
  return result;
}

void sub_1E5281E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::detail::StateMachine::Recovery(uint64_t *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v45[10] = v7;
  v44 = v7;
  *v45 = v7;
  v43[4] = v7;
  v43[5] = v7;
  v43[2] = v7;
  v43[3] = v7;
  v43[0] = v7;
  v43[1] = v7;
  v41 = v7;
  v42 = v7;
  v39 = v7;
  v40 = v7;
  v38 = v7;
  v36 = v7;
  v37 = v7;
  v34 = v7;
  v35 = v7;
  v8 = (*(**a4 + 8))(&v34);
  v9 = capabilities::updater::EUICCVinylSuccessStatus(v8);
  if (v34 != v9)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 201);
    return 18;
  }

  if (!BYTE7(v35))
  {
    v12 = 0;
LABEL_56:
    *a3 = 2;
    return v12;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (v45[19] < 5u)
  {
    memset(__p, 0, sizeof(__p));
  }

  else
  {
    eUICC::eUICCHashedFWDir(__p, &v44, &v44 + 3, v10);
  }

  eUICC::Source::GetMainFirmware(v11, __p, &v32);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v13 = v32;
    if (v32)
    {
LABEL_12:
      v14 = (*(*v13 + 8))(v13);
      v15 = *(&v38 + 1) != *v14;
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "SM::Recovery -- normal? %d\n", !v15);
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      if (v15)
      {
        v17 = *a1;
        if (v45[19] < 5u)
        {
          memset(__p, 0, sizeof(__p));
        }

        else
        {
          eUICC::eUICCHashedFWDir(__p, &v44, &v44 + 3, v16);
        }

        eUICC::Source::GetRecoveryForMac(&v29, (v43 + 3), v17, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v19 = v29;
        if (!v29)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = v32;
        v29 = v32;
        v30 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        if (!v19)
        {
LABEL_37:
          memset(__p, 170, sizeof(__p));
          ctu::hex(__p, (v43 + 3), 8);
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          v23 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v23 = __p[0];
          }

          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "SM::Recovery Missing gold with hash %s\n", v23);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v18 = 0;
          v12 = 15;
          v24 = v30;
          if (!v30)
          {
            goto LABEL_52;
          }

LABEL_50:
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          goto LABEL_52;
        }
      }

      v20 = *a4;
      v27 = v19;
      v28 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = (*(*v20 + 32))(v20, &v27);
      v21 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a4;
      *(v22 + 8) = 0u;
      v22 = (v22 + 8);
      v22[15] = 0u;
      v22[16] = 0u;
      v22[13] = 0u;
      v22[14] = 0u;
      v22[11] = 0u;
      v22[12] = 0u;
      v22[9] = 0u;
      v22[10] = 0u;
      v22[7] = 0u;
      v22[8] = 0u;
      v22[5] = 0u;
      v22[6] = 0u;
      v22[3] = 0u;
      v22[4] = 0u;
      v22[1] = 0u;
      v22[2] = 0u;
      *(v22 + 266) = 0u;
      if (v12)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 227);
      }

      else
      {
        v12 = (*(**a4 + 16))(*a4, 0, 0);
        if (!v12)
        {
          v18 = 1;
          v24 = v30;
          if (!v30)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 230);
      }

      v18 = 0;
      v24 = v30;
      if (!v30)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v13 = v32;
    if (v32)
    {
      goto LABEL_12;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "mainFW != nullptr", "", "", 211);
  v18 = 0;
  v12 = 15;
LABEL_52:
  v25 = v33;
  if (v33 && !atomic_fetch_add((v33 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v18)
  {
    goto LABEL_56;
  }

  return v12;
}

void sub_1E52824CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52824E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a24);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void sub_1E5282574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E528259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::detail::StateMachine::VersionCheck(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  memset(&v57, 0, sizeof(v57));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v60[10] = v6;
  *v59 = v6;
  *v60 = v6;
  v58[13] = v6;
  v58[14] = v6;
  v58[11] = v6;
  v58[12] = v6;
  v58[9] = v6;
  v58[10] = v6;
  v58[7] = v6;
  v58[8] = v6;
  v58[5] = v6;
  v58[6] = v6;
  v58[3] = v6;
  v58[4] = v6;
  v58[1] = v6;
  v58[2] = v6;
  v58[0] = v6;
  (*(**a4 + 8))(v58);
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (v60[19] < 5u)
  {
    memset(&__p, 0, sizeof(__p));
  }

  else
  {
    eUICC::eUICCHashedFWDir(&__p, v59, v59 + 3, v7);
  }

  eUICC::Source::GetMainFirmware(v8, &__p, &v52);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v49 = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *a1;
    if (v60[19] >= 5u)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v49 = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *a1;
    if (v60[19] >= 5u)
    {
LABEL_6:
      eUICC::eUICCHashedFWDir(&__p, v59, v59 + 3, v9);
      goto LABEL_9;
    }
  }

  memset(&__p, 0, sizeof(__p));
LABEL_9:
  eUICC::Source::GetGoldFirmware(v10, &__p, &v49);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v52)
    {
      goto LABEL_11;
    }

LABEL_22:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "eUICC Source has no FW, ENG?\n");
LABEL_68:
    v16 = 0;
    *a3 = 6;
    v17 = v50;
    if (!v50)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v52)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (!v49)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "goldFirmware", "", "", 257);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main & !Gold?\n");
    v16 = 15;
    *a3 = 4;
    v17 = v50;
    if (!v50)
    {
      goto LABEL_71;
    }

LABEL_69:
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    goto LABEL_71;
  }

  v12 = capabilities::updater::EUICCVinylSuccessStatus(v11);
  if (LODWORD(v58[0]) == v12)
  {
    eUICC::Firmware::BootloaderVersion(&__p, LOBYTE(v59[0]), BYTE1(v59[0]));
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    v57 = __p;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v13 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v57.__r_.__value_.__r.__words[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main FW supports %s?\n", v13);
    v15 = *a1;
    if (v60[19] < 5u)
    {
      memset(&__p, 0, sizeof(__p));
    }

    else
    {
      eUICC::eUICCHashedFWDir(&__p, v59, v59 + 3, v14);
    }

    eUICC::Source::GetMainFirmware(v15, &__p, &v47);
    v18 = eUICC::Firmware::BundleVersionsSupported(v47, &v54);
    v19 = v48;
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      v21 = v54;
      v20 = v55;
      if (v54 == v55)
      {
        goto LABEL_64;
      }

      v22 = (v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v57.__r_.__value_.__r.__words[2]) : v57.__r_.__value_.__l.__size_;
      v23 = (v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v57 : v57.__r_.__value_.__r.__words[0];
      while (1)
      {
        v24 = *(v21 + 23);
        v25 = v24;
        if (v24 < 0)
        {
          v24 = v21[1];
        }

        if (v24 == v22)
        {
          v26 = v25 >= 0 ? v21 : *v21;
          if (!memcmp(v26, v23, v22))
          {
            break;
          }
        }

        v21 += 3;
        if (v21 == v20)
        {
          goto LABEL_64;
        }
      }

      if (v21 == v20)
      {
LABEL_64:
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        v30 = 266;
LABEL_67:
        _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "std::end(bundleVersions) != std::find(bundleVersions.begin(), bundleVersions.end(), cardVersion)", "", "", v30);
        goto LABEL_68;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v27 = &v57;
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v57.__r_.__value_.__r.__words[0];
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold FW supports %s?\n", v27);
      v29 = *a1;
      if (v60[19] < 5u)
      {
        memset(&__p, 0, sizeof(__p));
      }

      else
      {
        eUICC::eUICCHashedFWDir(&__p, v59, v59 + 3, v28);
      }

      eUICC::Source::GetGoldFirmware(v29, &__p, &v47);
      v37 = eUICC::Firmware::BundleVersionsSupported(v47, &v54);
      v38 = v48;
      if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v37)
      {
        v40 = v54;
        v39 = v55;
        if (v54 != v55)
        {
          v41 = (v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v57.__r_.__value_.__r.__words[2]) : v57.__r_.__value_.__l.__size_;
          v42 = (v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v57 : v57.__r_.__value_.__r.__words[0];
          while (1)
          {
            v43 = *(v40 + 23);
            v44 = v43;
            if (v43 < 0)
            {
              v43 = v40[1];
            }

            if (v43 == v41)
            {
              v45 = v44 >= 0 ? v40 : *v40;
              if (!memcmp(v45, v42, v41))
              {
                break;
              }
            }

            v40 += 3;
            if (v40 == v39)
            {
              goto LABEL_110;
            }
          }

          if (v40 != v39)
          {
            v16 = 0;
            *a3 = 4;
            v17 = v50;
            if (!v50)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }
        }

LABEL_110:
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        v30 = 271;
        goto LABEL_67;
      }

      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x10Eu, "Assertion failure(success && Failed to get the gold loader version from Gold FW.)");
    }

    else
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x109u, "Assertion failure(success && Failed to get the main loader version from Main FW.)");
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 258);
  v16 = 18;
  *a3 = 4;
  v17 = v50;
  if (v50)
  {
    goto LABEL_69;
  }

LABEL_71:
  v31 = v53;
  if (v53 && !atomic_fetch_add((v53 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v54;
  if (v54)
  {
    v33 = v55;
    v34 = v54;
    if (v55 != v54)
    {
      do
      {
        v35 = *(v33 - 1);
        v33 -= 3;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
      v34 = v54;
    }

    v55 = v32;
    operator delete(v34);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_1E5282E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  __cxa_free_exception(v33);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  std::vector<std::string>::~vector[abi:ne200100](&a25);
  if ((a33 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::UpdateGold(uint64_t *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[16] + 10) = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v9 = (*(**a4 + 8))(__dst);
  v10 = capabilities::updater::EUICCVinylSuccessStatus(v9);
  if (LODWORD(__dst[0]) != v10)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v13 = 287;
    goto LABEL_7;
  }

  v12 = *a1;
  if (BYTE3(__dst[17]) < 5u)
  {
    memset(cf, 0, 24);
  }

  else
  {
    eUICC::eUICCHashedFWDir(cf, &__dst[15], &__dst[15] + 3, v11);
  }

  eUICC::Source::GetGoldFirmware(v12, cf, __p);
  v15 = __p[0];
  v16 = __p[1];
  __p[0] = 0;
  __p[1] = 0;
  v36 = v15;
  v37 = v16;
  if ((SHIBYTE(cf[2]) & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_25:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "goldFW", "", "", 290);
    v14 = 15;
    goto LABEL_52;
  }

  operator delete(cf[0]);
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_11:
  v17 = ((*v15)[1])(v15);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "In UpdateGold, fwMac.data = %p\n", v17);
  if ((*(a2 + 11) & 1) == 0 && *v17 == *(&__dst[9] + 3))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold FW Macs already matching (no forceGold)\n");
    v14 = 0;
    *a3 = 5;
  }

  else
  {
    ((*v15)[2])(cf, v15);
    if (cf[0])
    {
      CFRelease(cf[0]);
      if ((*(a2 + 11) & 1) != 0 || *v17 != *(&__dst[9] + 3))
      {
        v18 = *a4;
        ((*v15)[2])(&v35, v15);
        v14 = (*(*v18 + 24))(v18, &v35);
        if (v35)
        {
          CFRelease(v35);
        }

        v19 = *a4;
        *(v19 + 8) = 0u;
        v19 = (v19 + 8);
        v19[15] = 0u;
        v19[16] = 0u;
        v19[13] = 0u;
        v19[14] = 0u;
        v19[11] = 0u;
        v19[12] = 0u;
        v19[9] = 0u;
        v19[10] = 0u;
        v19[7] = 0u;
        v19[8] = 0u;
        v19[5] = 0u;
        v19[6] = 0u;
        v19[3] = 0u;
        v19[4] = 0u;
        v19[1] = 0u;
        v19[2] = 0u;
        *(v19 + 266) = 0u;
        if (v14)
        {
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 320);
          goto LABEL_52;
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully pushed Install Ticket\n");
      }

      v20 = *a4;
      v33 = v15;
      v34 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      v14 = (*(*v20 + 32))(v20, &v33);
      v21 = v34;
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a4;
      *(v22 + 8) = 0u;
      v22 = (v22 + 8);
      v22[15] = 0u;
      v22[16] = 0u;
      v22[13] = 0u;
      v22[14] = 0u;
      v22[11] = 0u;
      v22[12] = 0u;
      v22[9] = 0u;
      v22[10] = 0u;
      v22[7] = 0u;
      v22[8] = 0u;
      v22[5] = 0u;
      v22[6] = 0u;
      v22[3] = 0u;
      v22[4] = 0u;
      v22[1] = 0u;
      v22[2] = 0u;
      *(v22 + 266) = 0u;
      if (v14)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 326);
        goto LABEL_52;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully streamed Firmware\n");
      v14 = (*(**a4 + 16))(*a4, 0, 0);
      v23 = *a4;
      *(v23 + 8) = 0u;
      v23 = (v23 + 8);
      v23[15] = 0u;
      v23[16] = 0u;
      v23[13] = 0u;
      v23[14] = 0u;
      v23[11] = 0u;
      v23[12] = 0u;
      v23[9] = 0u;
      v23[10] = 0u;
      v23[7] = 0u;
      v23[8] = 0u;
      v23[5] = 0u;
      v23[6] = 0u;
      v23[3] = 0u;
      v23[4] = 0u;
      v23[1] = 0u;
      v23[2] = 0u;
      *(v23 + 266) = 0u;
      if (v14)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 333);
        goto LABEL_52;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully switched back to Normal\n");
      (*(**a4 + 8))(cf);
      v26 = memcpy(__dst, cf, 0x11AuLL);
      v27 = capabilities::updater::EUICCVinylSuccessStatus(v26);
      if (LODWORD(__dst[0]) == v27)
      {
        v28 = operator new(0x28uLL);
        cf[0] = v28;
        *&cf[1] = xmmword_1E5390C30;
        v29 = *(&__dst[2] + 8);
        *v28 = *(&__dst[1] + 8);
        v28[1] = v29;
        *(v28 + 32) = 0;
        memset(__p, 170, sizeof(__p));
        (**v36)(__p);
        v30 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(cf, __p);
        if (v30)
        {
          v14 = 0;
        }

        else
        {
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          v31 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v31 = __p[0];
          }

          v14 = 22;
          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold version strings mismatched: Card %s Bundle %s\n", v28, v31);
        }

        if ((SHIBYTE(__p[2]) & 0x80000000) == 0 || (operator delete(__p[0]), SHIBYTE(cf[2]) < 0))
        {
          operator delete(cf[0]);
        }

        if (v30)
        {
          *a3 = 5;
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Success!\n");
        }

        goto LABEL_52;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v13 = 339;
LABEL_7:
      _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", v13);
      v14 = 18;
      goto LABEL_52;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Install gold but no ticket -- back to restored please\n");
    v14 = 45;
    *a3 = 4;
  }

LABEL_52:
  v24 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  return v14;
}

void sub_1E5283920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((a18 & 0x80000000) == 0 || (operator delete(__p), a32 < 0))
  {
    operator delete(a27);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::UpdateMain(uint64_t *a1, uint64_t a2, int *a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  __p = 0;
  v45 = 0uLL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[16] + 10) = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v9 = (*(**a4 + 8))(__dst);
  v10 = capabilities::updater::EUICCVinylSuccessStatus(v9);
  if (LODWORD(__dst[0]) != v10)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 366);
    v13 = 18;
    if (SHIBYTE(v45) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_78;
  }

  v12 = *a1;
  if (BYTE3(__dst[17]) < 5u)
  {
    memset(cf, 0, 24);
  }

  else
  {
    eUICC::eUICCHashedFWDir(cf, &__dst[15], &__dst[15] + 3, v11);
  }

  eUICC::Source::GetMainFirmware(v12, cf, &v42);
  v15 = v42;
  v16 = v43;
  v42 = 0;
  v43 = 0;
  v48 = v15;
  v49 = v16;
  if (SHIBYTE(cf[2]) < 0)
  {
    operator delete(cf[0]);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_47:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "mainFW", "", "", 369);
    v13 = 15;
    if (SHIBYTE(v45) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_78;
  }

  if (!v15)
  {
    goto LABEL_47;
  }

LABEL_13:
  (**v15)(cf, v15);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  *v46 = *cf;
  v47 = cf[2];
  v17 = operator new(0x28uLL);
  v18 = *(&__dst[2] + 8);
  *v17 = *(&__dst[1] + 8);
  v17[1] = v18;
  *(v17 + 32) = 0;
  if (SHIBYTE(v45) < 0)
  {
    v19 = v17;
    operator delete(__p);
    v17 = v19;
  }

  __p = v17;
  v45 = xmmword_1E5390C30;
  v20 = (*(*v15 + 8))(v15);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  p_p = &__p;
  if (v45 < 0)
  {
    p_p = __p;
  }

  v22 = v46;
  if (SHIBYTE(v47) < 0)
  {
    v22 = v46[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Update Main:Card %s Bundle %s\n", p_p, v22);
  if ((*(a2 + 10) & 1) == 0)
  {
    if (v45 >= 0)
    {
      v23 = HIBYTE(v45);
    }

    else
    {
      v23 = v45;
    }

    v24 = HIBYTE(v47);
    if (SHIBYTE(v47) < 0)
    {
      v24 = v46[1];
    }

    if (v23 == v24)
    {
      v25 = v45 >= 0 ? &__p : __p;
      v26 = SHIBYTE(v47) >= 0 ? v46 : v46[0];
      if (!memcmp(v25, v26, v23))
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main FW versions already matching (no forceMain)\n");
        goto LABEL_75;
      }
    }
  }

  (*(*v15 + 16))(cf, v15);
  if (!cf[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Install main but no ticket -- back to restored please\n");
    v13 = 45;
    v29 = 5;
    goto LABEL_76;
  }

  CFRelease(cf[0]);
  if ((*(a2 + 10) & 1) != 0 || *(&__dst[4] + 1) != *v20)
  {
    v27 = *a4;
    (*(*v15 + 16))(&v41, v15);
    v13 = (*(*v27 + 24))(v27, &v41);
    if (v41)
    {
      CFRelease(v41);
    }

    v28 = *a4;
    *(v28 + 8) = 0u;
    v28 = (v28 + 8);
    v28[15] = 0u;
    v28[16] = 0u;
    v28[13] = 0u;
    v28[14] = 0u;
    v28[11] = 0u;
    v28[12] = 0u;
    v28[9] = 0u;
    v28[10] = 0u;
    v28[7] = 0u;
    v28[8] = 0u;
    v28[5] = 0u;
    v28[6] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    *(v28 + 266) = 0u;
    if (v13)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 400);
      goto LABEL_77;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully pushed Install Ticket\n");
  }

  v30 = *a4;
  v39 = v15;
  v40 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = (*(*v30 + 32))(v30, &v39);
  v31 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *a4;
  *(v32 + 8) = 0u;
  v32 = (v32 + 8);
  v32[15] = 0u;
  v32[16] = 0u;
  v32[13] = 0u;
  v32[14] = 0u;
  v32[11] = 0u;
  v32[12] = 0u;
  v32[9] = 0u;
  v32[10] = 0u;
  v32[7] = 0u;
  v32[8] = 0u;
  v32[5] = 0u;
  v32[6] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  *(v32 + 266) = 0u;
  if (v13)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 406);
    goto LABEL_77;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully streamed Firmware\n");
  v13 = (*(**a4 + 16))(*a4, 0, 0);
  v33 = *a4;
  *(v33 + 8) = 0u;
  v33 = (v33 + 8);
  v33[15] = 0u;
  v33[16] = 0u;
  v33[13] = 0u;
  v33[14] = 0u;
  v33[11] = 0u;
  v33[12] = 0u;
  v33[9] = 0u;
  v33[10] = 0u;
  v33[7] = 0u;
  v33[8] = 0u;
  v33[5] = 0u;
  v33[6] = 0u;
  v33[3] = 0u;
  v33[4] = 0u;
  v33[1] = 0u;
  v33[2] = 0u;
  *(v33 + 266) = 0u;
  if (v13)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 413);
LABEL_77:
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_7:
    operator delete(__p);
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_8;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully switched back to Normal\n");
  (*(**a4 + 8))(cf);
  memcpy(__dst, cf, 0x11AuLL);
  v35 = operator new(0x28uLL);
  cf[0] = v35;
  *&cf[1] = xmmword_1E5390C30;
  v36 = *(&__dst[2] + 8);
  *v35 = *(&__dst[1] + 8);
  v35[1] = v36;
  *(v35 + 32) = 0;
  v37 = capabilities::updater::EUICCVinylSuccessStatus(v35);
  if (LODWORD(__dst[0]) == v37)
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(cf, v46))
    {
      operator delete(v35);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Success!\n");
LABEL_75:
      v13 = 0;
      v29 = 6;
LABEL_76:
      *a3 = v29;
      goto LABEL_77;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v38 = v46;
    if (SHIBYTE(v47) < 0)
    {
      v38 = v46[0];
    }

    v13 = 22;
    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main version strings mismatched: Card %s Bundle %s", v35, v38);
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 420);
    v13 = 18;
  }

  operator delete(v35);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_7;
  }

LABEL_78:
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
LABEL_79:
    v14 = v49;
    if (!v49)
    {
      return v13;
    }

    goto LABEL_80;
  }

LABEL_8:
  operator delete(v46[0]);
  v14 = v49;
  if (!v49)
  {
    return v13;
  }

LABEL_80:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  return v13;
}

void sub_1E528444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a31 & 0x80000000) == 0)
    {
LABEL_7:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a33);
      _Unwind_Resume(a1);
    }
  }

  else if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a26);
  goto LABEL_7;
}

uint64_t eUICC::detail::StateMachine::PostProcess(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  result = 0;
  v6 = *(a2 + 4);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = 1;
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      v7 = 0;
    }

    eUICC::ClearMetadata::Perform(v7, a4);
    result = 0;
    *a3 = 9;
    return result;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_5;
    }

    result = (*(**a4 + 40))(*a4, 1);
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = (*(**a4 + 40))(*a4, 0);
  if (!result)
  {
LABEL_5:
    *a3 = 9;
    return result;
  }

LABEL_10:
  v8 = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Failed to handle post processing request\n");
  result = v8;
  *a3 = 9;
  return result;
}

uint64_t eUICC::detail::StateMachine::Retry(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  (*(**a4 + 16))(*a4, 0, 1);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "...waiting patiently for reset\n");
  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  *a3 = 0;
  return 0;
}

uint64_t std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::~pair(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t eUICC::HowToProceed(capabilities::updater *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "eUICC Skip All\n");
    return 3;
  }

  v4 = capabilities::updater::EUICCVinylSuccessStatus(a1);
  if (*a1 == v4)
  {
    memset(v18, 170, sizeof(v18));
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3223088;
    std::vector<std::string>::vector[abi:ne200100](v18, &__p, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 170, sizeof(__p));
    eUICC::Firmware::BootloaderVersion(&__p, *(a1 + 240), *(a1 + 241));
    v5 = v18[0];
    v6 = v18[1];
    if (v18[0] != v18[1])
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v9 = *(v5 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = v5[1];
        }

        if (v9 == size)
        {
          v11 = v10 >= 0 ? v5 : *v5;
          if (!memcmp(v11, p_p, size))
          {
            break;
          }
        }

        v5 += 3;
        if (v5 == v6)
        {
          goto LABEL_34;
        }
      }
    }

    if (v5 == v6)
    {
LABEL_34:
      result = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "eUICC HW present is too old so we will skip updating it\n");
      result = 3;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    v12 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v12;
LABEL_36:
    v13 = v18[0];
    if (v18[0])
    {
      v14 = result;
      v15 = v18[1];
      v16 = v18[0];
      if (v18[1] != v18[0])
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v13);
        v16 = v18[0];
      }

      v18[1] = v13;
      operator delete(v16);
      return v14;
    }

    return result;
  }

  if (*(a1 + 278) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "eUICC not stuffed but that's ok!\n");
    return 3;
  }

  if (!capabilities::updater::shouldBailOnEUICCError(v4))
  {
    return 2;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Bailing on eUICC error due to status %u\n", *a1);
  return 0;
}

void sub_1E5284AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1E5284B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::eUICCHashedFWDir(eUICC *this, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v46 = v7;
  v55 = v7;
  v54 = v7;
  v53 = v7;
  v52 = v7;
  v51 = v7;
  v50 = v7;
  v47 = v7;
  *__p = v7;
  v43 = v7;
  v40 = v7;
  v41 = v7;
  v38 = v7;
  v39 = v7;
  v49 = 0;
  v8 = MEMORY[0x1E69E5570] + 64;
  v45 = MEMORY[0x1E69E5570] + 64;
  v9 = *(MEMORY[0x1E69E54E8] + 16);
  v37 = *(MEMORY[0x1E69E54E8] + 8);
  *(&v37 + *(v37 - 24)) = v9;
  v10 = (&v37 + *(v37 - 24));
  std::ios_base::init(v10, &v38);
  v11 = MEMORY[0x1E69E5570] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v37 = v11;
  v45 = v8;
  v35 = MEMORY[0x1E69E5538] + 16;
  *&v38 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](&v38 + 8);
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v12 = MEMORY[0x1E69E5548] + 16;
  *&v38 = MEMORY[0x1E69E5548] + 16;
  __p[0] = 0;
  BYTE7(v43) = 0;
  *(&v43 + 1) = 0;
  LODWORD(v44) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v38);
  v34 = v12;
  v13 = *a2;
  if ((a2[1] | ((*a2 & 0x7F) << 8)) < 0x301u)
  {
    v19 = operator new(0x14uLL);
    v36 = 0;
    *v19 = *a3;
    *(v19 + 4) = *(a3 + 16);
    v17 = v19 + 20;
    v18 = v19;
  }

  else
  {
    v14 = operator new(0x14uLL);
    *v14 = *a3;
    v14[4] = *(a3 + 16);
    v15 = operator new(0x28uLL);
    v15[20] = v13;
    *v15 = *a3;
    *(v15 + 4) = *(a3 + 16);
    operator delete(v14);
    v15[21] = a2[1];
    v16 = operator new(0x20uLL);
    *v16 = 0u;
    v16[1] = 0u;
    CC_SHA256(v15, 0x16u, v16);
    v17 = (v16 + 2);
    v36 = v15;
    v18 = v16;
  }

  v20 = 0;
  v21 = v17 - v18;
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  do
  {
    v23 = v37;
    *(&v38 + *(v37 - 24)) = *(&v38 + *(v37 - 24)) & 0xFFFFFFB5 | 8;
    *(&v39 + *(v23 - 24)) = 2;
    v24 = &v37 + *(v23 - 24);
    if (*(v24 + 36) == -1)
    {
      std::ios_base::getloc((&v37 + *(v23 - 24)));
      v25 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
      (v25->__vftable[2].~facet_0)(v25, 32);
      std::locale::~locale(&v56);
    }

    *(v24 + 36) = 48;
    MEMORY[0x1E69270D0](&v37, v18[v20++]);
  }

  while (v22 != v20);
  v26 = this;
  if ((v44 & 0x10) != 0)
  {
    v30 = *(&v43 + 1);
    v27 = MEMORY[0x1E69E54E8];
    if (*(&v43 + 1) < v41)
    {
      *(&v43 + 1) = v41;
      v30 = v41;
    }

    v31 = *(&v40 + 1);
    v28 = v30 - *(&v40 + 1);
    if ((v30 - *(&v40 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E54E8];
    if ((v44 & 8) == 0)
    {
      v28 = 0;
      *(this + 23) = 0;
      v29 = v35;
      goto LABEL_24;
    }

    v31 = v39;
    v28 = v40 - v39;
    if (v40 - v39 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_30:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v32 = 25;
    }

    else
    {
      v32 = (v28 | 7) + 1;
    }

    v33 = operator new(v32);
    *(this + 1) = v28;
    *(this + 2) = v32 | 0x8000000000000000;
    *this = v33;
    v26 = v33;
    v29 = v35;
    goto LABEL_23;
  }

  *(this + 23) = v28;
  v29 = v35;
  if (v28)
  {
LABEL_23:
    memmove(v26, v31, v28);
  }

LABEL_24:
  *(v26 + v28) = 0;
  v37 = *v27;
  *(&v37 + *(v37 - 24)) = v27[3];
  *&v38 = v34;
  if (SBYTE7(v43) < 0)
  {
    operator delete(__p[0]);
  }

  *&v38 = v29;
  std::locale::~locale(&v38 + 1);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](&v45);
  operator delete(v18);
  if (v36)
  {
    operator delete(v36);
  }
}

void sub_1E52850E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a16);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](a12);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5EFFAE0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EFFAE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v9 = *a2;
  *a2 = 0uLL;
  result = v5(&v9, a3, a4, a5);
  v7 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    if (!atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E5390DD1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E5390DD1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5390DD1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390DD1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t *std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(uint64_t *result, uint64_t *a2, int a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result + 1;
  if (result + 1 == a2 || (v8 = *(a2 + 8), v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
LABEL_37:
      v22 = operator new(0x48uLL);
      v22[8] = *a4;
      v23 = *(a4 + 32);
      if (v23)
      {
        if (v23 == a4 + 8)
        {
          *(v22 + 8) = v22 + 10;
          (*(*v23 + 24))(v23);
          goto LABEL_47;
        }

        v23 = (*(*v23 + 16))(v23);
      }

      *(v22 + 8) = v23;
LABEL_47:
      *v22 = 0;
      *(v22 + 1) = 0;
      *(v22 + 2) = v5;
      *v13 = v22;
      v25 = **v6;
      if (v25)
      {
        *v6 = v25;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v22);
      ++v6[2];
      return result;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (*(v11 + 8) < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = result + 1;
    v5 = result + 1;
    if (!*v7)
    {
      goto LABEL_37;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = *(v18 + 32);
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_37;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = *(v18 + 8);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = a2 + 1;
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_37;
    }

    if (*(v14 + 8) > a3)
    {
      goto LABEL_37;
    }

    v21 = *v7;
    v13 = result + 1;
    v5 = result + 1;
    if (!*v7)
    {
      goto LABEL_37;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v24 = *(v21 + 32);
        if (v24 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_37;
        }
      }

      if (v24 >= a3)
      {
        break;
      }

      v21 = *(v21 + 8);
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_37;
      }
    }
  }

  return result;
}

void sub_1E52858C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[8];
      if (v3 == v2 + 5)
      {
        (*(*v3 + 32))(v3);
      }

      else if (v3)
      {
        (*(*v3 + 40))(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
      v3 = a1;
    }

    else
    {
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleController_BootROM::create(void *a1@<X8>)
{
  *a1 = 0;
  v2 = operator new(0x50uLL);
  *v2 = &unk_1F5EFFB90;
  v2[1] = 0;
  *(v2 + 1) = 0u;
  v3 = v2 + 2;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  v6 = v2;
  if (atomic_load_explicit(v2 + 2, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(v3, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>);
  }

  if (v2[1])
  {
    *a1 = v2;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init bootrom object\n", "DaleController_BootROM", "create");
    v5 = *(*v2 + 8);

    v5(v2);
  }
}

void sub_1E5285BA4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController_BootROM::init(DaleController_BootROM *this)
{
  v2 = (this + 16);
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>);
  }

  return *(this + 8);
}

uint64_t DaleController_BootROM::sendLoader(DaleController_BootROM *this, const DaleImage *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v126 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending loader...\n", "DaleController_BootROM", "sendLoader");
  if (a2)
  {
    Size = DaleImage::getSize(a2);
    if (Size)
    {
      v7 = DaleImage::getSize(a2);
      if (v7)
      {
        DaleImage::getData(&v127, a2, 0, v7);
        v9 = v127;
        v126 = v127;
        if (v127)
        {
          v10 = ACFULogging::getLogInstance(v8);
          v11 = ACFULogging::handleMessage(v10, 4, "%s::%s: loader image size: %zu\n", "DaleController_BootROM", "sendLoader", Size);
          LOBYTE(v123) = 0;
          v12 = ACFULogging::getLogInstance(v11);
          ACFULogging::handleMessage(v12, 3, "%s::%s: >>send BROM_CMD_FLB_LOAD_BL\n", "DaleController_BootROM", "sendLoader");
          v13 = *(this + 3);
          LOBYTE(v127) = -64;
          v14 = support::transport::airship::write(*(v13 + 8), &v127, 1uLL);
          if ((v14 & 1) == 0)
          {
            v75 = ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage(v75, 2, "%s::%s: failed to write BROM_CMD_FLB_LOAD_BL\n");
            goto LABEL_63;
          }

          v15 = support::transport::airship::read(*(*(this + 3) + 8), &v123, 1uLL);
          if ((v15 & 1) == 0)
          {
            v76 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v76, 2, "%s::%s: failed to read ACK for BROM_CMD_FLB_LOAD_BL\n");
            goto LABEL_63;
          }

          if (v123 != 192)
          {
            v77 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v77, 2, "%s::%s: invalid ACK (0x%x) for BROM_CMD_FLB_LOAD_BL\n", "DaleController_BootROM", "sendLoader", v123);
            goto LABEL_63;
          }

          v125 = 0;
          v123 = 1179402836;
          LODWORD(v124) = 49152;
          HIDWORD(v124) = Size;
          if (Size > 0x6A000)
          {
            v78 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v78, 2, "%s::%s: loader size greater than %d\n", "DaleController_BootROM", "sendLoader", 434176);
            goto LABEL_63;
          }

          LODWORD(v125) = 512;
          v16 = ACFULogging::getLogInstance(v15);
          ACFULogging::handleMessage(v16, 3, "%s::%s: >>send FLB_MSG_LOAD_BIN_HEADER\n", "DaleController_BootROM", "sendLoader");
          v17 = support::transport::airship::write(*(*(this + 3) + 8), &v123, 0x18uLL);
          if ((v17 & 1) == 0)
          {
            v79 = ACFULogging::getLogInstance(v17);
            ACFULogging::handleMessage(v79, 2, "%s::%s: failed to write FLB_MSG_LOAD_BIN_HEADER\n", "DaleController_BootROM", "sendLoader");
            goto LABEL_63;
          }

          v127 = 0u;
          v128 = 0u;
          v18 = ACFULogging::getLogInstance(v17);
          ACFULogging::handleMessage(v18, 3, "%s::%s: <<rcv FLB_MSG_ACK_BIN_HEADER\n", "DaleController_BootROM", "sendLoader");
          v19 = support::transport::airship::read(*(*(this + 3) + 8), &v127, 0x20uLL);
          if ((v19 & 1) == 0)
          {
            v80 = ACFULogging::getLogInstance(v19);
            ACFULogging::handleMessage(v80, 2, "%s::%s: failed to read rsp for FLB_MSG_ACK_BIN_HEADER\n");
            goto LABEL_63;
          }

          v20 = checkStatusInfo(&v127, 49153, 0);
          if ((v20 & 1) == 0)
          {
            v81 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v81, 2, "%s::%s: check status info for FLB_MSG_ACK_BIN_HEADER failed\n");
            goto LABEL_63;
          }

          v21 = ACFULogging::getLogInstance(v20);
          ACFULogging::handleMessage(v21, 3, "%s::%s: >>send GFH header\n", "DaleController_BootROM", "sendLoader");
          DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v9);
          v121 = DataPtr[1];
          v122 = *DataPtr;
          v118 = DataPtr[3];
          v119 = DataPtr[2];
          v117 = DataPtr[4];
          v120 = DataPtr[5];
          v115 = DataPtr[9];
          v116 = DataPtr[8];
          v105 = DataPtr[10];
          v106 = DataPtr[6];
          v103 = DataPtr[12];
          v104 = DataPtr[11];
          v109 = DataPtr[13];
          v110 = DataPtr[7];
          v113 = DataPtr[15];
          v114 = DataPtr[14];
          v101 = DataPtr[17];
          v102 = DataPtr[16];
          v99 = DataPtr[19];
          v100 = DataPtr[18];
          v111 = DataPtr[23];
          v112 = DataPtr[22];
          v97 = DataPtr[24];
          v98 = DataPtr[20];
          v95 = DataPtr[26];
          v96 = DataPtr[25];
          v93 = DataPtr[28];
          v94 = DataPtr[27];
          v91 = DataPtr[30];
          v92 = DataPtr[29];
          v107 = DataPtr[31];
          v108 = DataPtr[21];
          v23 = ACFULogging::getLogInstance(DataPtr);
          v24 = veorq_s8(veorq_s8(veorq_s8(v107, veorq_s8(v92, veorq_s8(v94, veorq_s8(v96, v111)))), veorq_s8(veorq_s8(v108, veorq_s8(v99, veorq_s8(v101, v113))), veorq_s8(veorq_s8(v109, veorq_s8(v104, v115)), veorq_s8(veorq_s8(v110, v120), veorq_s8(v118, v121))))), veorq_s8(veorq_s8(v91, veorq_s8(v93, veorq_s8(v95, veorq_s8(v97, v112)))), veorq_s8(veorq_s8(v98, veorq_s8(v100, veorq_s8(v102, v114))), veorq_s8(veorq_s8(v103, veorq_s8(v105, v116)), veorq_s8(veorq_s8(v106, v117), veorq_s8(v119, v122))))));
          *v24.i8 = veor_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          v25 = v24.i16[0] ^ v24.i16[2] ^ ((v24.i32[0] ^ v24.i32[1]) >> 16);
          ACFULogging::handleMessage(v23, 4, "%s::%s: payload checksum: 0x%x\n", "DaleController_BootROM", "sendLoader", v25);
          v26 = *(this + 3);
          v27 = ACFUDataContainer::DirectDataRef::getDataPtr(v9);
          v28 = support::transport::airship::write(*(v26 + 8), v27, 0x200uLL);
          if ((v28 & 1) == 0)
          {
            v82 = ACFULogging::getLogInstance(v28);
            ACFULogging::handleMessage(v82, 2, "%s::%s: failed to write data header\n", "DaleController_BootROM", "sendLoader");
            goto LABEL_63;
          }

          v127 = 0u;
          v128 = 0u;
          v29 = ACFULogging::getLogInstance(v28);
          ACFULogging::handleMessage(v29, 4, "%s::%s: <<rcv FLB_MSG_BIN_HEADER_STATUS\n", "DaleController_BootROM", "sendLoader");
          v30 = support::transport::airship::read(*(*(this + 3) + 8), &v127, 0x20uLL);
          if ((v30 & 1) == 0)
          {
            v83 = ACFULogging::getLogInstance(v30);
            ACFULogging::handleMessage(v83, 2, "%s::%s: failed to read rsp for FLB_MSG_BIN_HEADER_STATUS\n");
            goto LABEL_63;
          }

          v31 = checkStatusInfo(&v127, 49155, v25);
          if ((v31 & 1) == 0)
          {
            v84 = ACFULogging::getLogInstance(v31);
            ACFULogging::handleMessage(v84, 2, "%s::%s: check status info for FLB_MSG_BIN_HEADER_STATUS failed\n");
            goto LABEL_63;
          }

          v123 = 0;
          v124 = 0;
          LODWORD(v125) = 0;
          v32 = ACFULogging::getLogInstance(v31);
          ACFULogging::handleMessage(v32, 3, "%s::%s: >>send FLB_MSG_LOAD_BIN_BODY\n", "DaleController_BootROM", "sendLoader");
          v123 = 1179402836;
          v33 = Size - 512;
          LODWORD(v124) = 49156;
          HIDWORD(v124) = v33;
          v34 = support::transport::airship::write(*(*(this + 3) + 8), &v123, 0x14uLL);
          if ((v34 & 1) == 0)
          {
            v85 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v85, 2, "%s::%s: failed to write FLB_MSG_LOAD_BIN_BODY\n", "DaleController_BootROM", "sendLoader");
            goto LABEL_63;
          }

          v127 = 0u;
          v128 = 0u;
          v35 = ACFULogging::getLogInstance(v34);
          ACFULogging::handleMessage(v35, 3, "%s::%s: <<rcv FLB_MSG_ACK_BIN_BODY\n", "DaleController_BootROM", "sendLoader");
          v36 = support::transport::airship::read(*(*(this + 3) + 8), &v127, 0x20uLL);
          if ((v36 & 1) == 0)
          {
            v86 = ACFULogging::getLogInstance(v36);
            ACFULogging::handleMessage(v86, 2, "%s::%s: failed to read rsp for FLB_MSG_ACK_BIN_BODY\n");
            goto LABEL_63;
          }

          v37 = checkStatusInfo(&v127, 49157, 0);
          if ((v37 & 1) == 0)
          {
            v87 = ACFULogging::getLogInstance(v37);
            ACFULogging::handleMessage(v87, 2, "%s::%s: check status info for FLB_MSG_ACK_BIN_BODY failed\n");
            goto LABEL_63;
          }

          v38 = ACFULogging::getLogInstance(v37);
          ACFULogging::handleMessage(v38, 3, "%s::%s: >>send body payload\n", "DaleController_BootROM", "sendLoader");
          v39 = ACFUDataContainer::DirectDataRef::getDataPtr(v9);
          if (v33 < 2)
          {
            v40 = 0;
            v41 = 0;
            if ((v33 & 1) == 0)
            {
LABEL_39:
              v63 = ACFULogging::getLogInstance(v39);
              ACFULogging::handleMessage(v63, 4, "%s::%s: payload checksum: 0x%x\n", "DaleController_BootROM", "sendLoader", v40);
              v64 = *(this + 3);
              v65 = ACFUDataContainer::DirectDataRef::getDataPtr(v9);
              v66 = support::transport::airship::write(*(v64 + 8), (v65 + 512), v33);
              if (v66)
              {
                v127 = 0u;
                v128 = 0u;
                v67 = ACFULogging::getLogInstance(v66);
                ACFULogging::handleMessage(v67, 3, "%s::%s: <<receive FLB_MSG_BIN_BODY_STATUS\n", "DaleController_BootROM", "sendLoader");
                v68 = support::transport::airship::read(*(*(this + 3) + 8), &v127, 0x20uLL);
                if (v68)
                {
                  v69 = checkStatusInfo(&v127, 49159, v40);
                  if (v69)
                  {
                    v70 = ACFULogging::getLogInstance(v69);
                    ACFULogging::handleMessage(v70, 3, "%s::%s: successfully finished sending loader\n", "DaleController_BootROM", "sendLoader");
                    v44 = 1;
LABEL_43:
                    v71 = MEMORY[0x1E69262B0](v9);
                    operator delete(v71);
                    return v44;
                  }

                  v90 = ACFULogging::getLogInstance(v69);
                  ACFULogging::handleMessage(v90, 2, "%s::%s: check status info for FLB_MSG_BIN_BODY_STATUS failed\n");
                }

                else
                {
                  v89 = ACFULogging::getLogInstance(v68);
                  ACFULogging::handleMessage(v89, 2, "%s::%s: failed to read rsp for FLB_MSG_BIN_BODY_STATUS\n");
                }
              }

              else
              {
                v88 = ACFULogging::getLogInstance(v66);
                ACFULogging::handleMessage(v88, 2, "%s::%s: failed to write payload data\n", "DaleController_BootROM", "sendLoader");
              }

LABEL_63:
              v44 = 0;
              goto LABEL_43;
            }

LABEL_38:
            v40 ^= *(v39 + v41 + 512);
            goto LABEL_39;
          }

          v45 = v33 >> 1;
          if (v45 < 4)
          {
            v46 = 0;
            v40 = 0;
            goto LABEL_35;
          }

          if (v45 >= 0x10)
          {
            v47 = (v33 >> 1) & 0xF;
            v46 = v45 - v47;
            v48 = (v39 + 528);
            v49 = 0uLL;
            v50 = v45 - v47;
            v51 = 0uLL;
            do
            {
              v49 = veorq_s8(v48[-1], v49);
              v51 = veorq_s8(*v48, v51);
              v48 += 2;
              v50 -= 16;
            }

            while (v50);
            v52 = veorq_s8(v51, v49);
            *v52.i8 = veor_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
            v40 = v52.i16[0] ^ v52.i16[2] ^ ((v52.i32[0] ^ v52.i32[1]) >> 16);
            if (!v47)
            {
              goto LABEL_37;
            }

            if (v47 < 4)
            {
LABEL_35:
              v60 = v45 - v46;
              v61 = (v39 + 2 * v46 + 512);
              do
              {
                v62 = *v61++;
                v40 ^= v62;
                --v60;
              }

              while (v60);
              goto LABEL_37;
            }
          }

          else
          {
            v40 = 0;
            v46 = 0;
          }

          v53 = (v33 >> 1) & 3;
          v54 = (v39 + 2 * v46);
          v55 = v46 + v53;
          v46 = v45 - v53;
          v56 = v40;
          v57 = v54 + 64;
          v58 = v55 - v45;
          do
          {
            v59 = *v57++;
            v56 = veor_s8(v59, v56);
            v58 += 4;
          }

          while (v58);
          v40 = v56.i16[0] ^ v56.i16[2] ^ ((v56.i32[0] ^ v56.i32[1]) >> 16);
          if (v53)
          {
            goto LABEL_35;
          }

LABEL_37:
          v41 = v33 & 0xFFFFFFFE;
          if ((v33 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v42 = ACFULogging::getLogInstance(0);
        v8 = ACFULogging::handleMessage(v42, 4, "%s::%s: unable to determine image size; image not loaded\n", "DaleImage", "getData");
        v126 = 0;
      }

      v43 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v43, 2, "%s::%s: invalid loader image data\n");
    }

    else
    {
      v74 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v74, 2, "%s::%s: invalid loader image size\n");
    }
  }

  else
  {
    v73 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v73, 2, "%s::%s: invalid loader image\n");
  }

  return 0;
}

uint64_t checkStatusInfo(ACFULogging *a1, int a2, int a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v7 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: status info:\n\t- magic:\t0x%x\n\t- ver:\t\t%d\n\t- msg_id:\t0x%x:0x%x\n\t- status:\t0x%x\n", "DaleController_BootROM", "checkStatusInfo", *a1, *(a1 + 1), *(a1 + 2), a2, *(a1 + 3));
  if (*a1 != 1179402836)
  {
    v16 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v16, 2, "%s::%s: invalid magic number 0x%x\n");
    return 0;
  }

  if (*(a1 + 2) != a2)
  {
    v17 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v17, 2, "%s::%s: msg_id mismatch; expected: 0x%x, actual: 0x%x\n");
    return 0;
  }

  v8 = *(a1 + 3);
  v9 = ACFULogging::getLogInstance(v7);
  if (v8)
  {
    ACFULogging::handleMessage(v9, 2, "%s::%s: status error (0x%x)\n");
    return 0;
  }

  ACFULogging::handleMessage(v9, 4, "%s::%s: rsp.m_u.m_bin_header.m_checksum:0x%x\n", "DaleController_BootROM", "checkStatusInfo", *(a1 + 8));
  v10 = *(a1 + 2);
  result = 1;
  if (v10 <= 49664)
  {
    if (v10 <= 49156)
    {
      if (v10 != 49153)
      {
        if (v10 != 49155)
        {
LABEL_29:
          v15 = ACFULogging::getLogInstance(1);
          ACFULogging::handleMessage(v15, 2, "%s::%s: invalid msg id 0x%x\n");
          return 0;
        }

        if (*(a1 + 8) != a3)
        {
          v12 = ACFULogging::getLogInstance(1);
          ACFULogging::handleMessage(v12, 2, "%s::%s: GFH header checksum mismatch; expected: 0x%x, actual: 0x%x\n");
          return 0;
        }
      }
    }

    else if (v10 != 49157)
    {
      if (v10 == 49159)
      {
        if (*(a1 + 8) == a3)
        {
          v13 = ACFULogging::getLogInstance(1);
          v14 = ACFULogging::handleMessage(v13, 4, "%s::%s: Code:\n\t- m_io_code1: 0x%x\n\t- m_io_code2: 0x%x\n\t- m_status_load: 0x%x\n\t- m_status_verify: 0x%x\n", "DaleController_BootROM", "checkStatusInfo", *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12));
          if (*(a1 + 9))
          {
            v19 = ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage(v19, 2, "%s::%s: m_io_code1 status error: 0x%x\n");
          }

          else if (*(a1 + 10))
          {
            v20 = ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage(v20, 2, "%s::%s: m_io_code2 status error: 0x%x\n");
          }

          else if (*(a1 + 11))
          {
            v21 = ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage(v21, 2, "%s::%s: m_status_load status error: 0x%x\n");
          }

          else
          {
            if (!*(a1 + 12))
            {
              return 1;
            }

            v22 = ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage(v22, 2, "%s::%s: m_status_verify status error: 0x%x\n");
          }
        }

        else
        {
          v18 = ACFULogging::getLogInstance(1);
          ACFULogging::handleMessage(v18, 2, "%s::%s: GFH checksum mismatch; expected: 0x%x, actual: 0x%x\n");
        }

        return 0;
      }

      if (v10 != 49409)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v10 > 49920)
  {
    if (v10 != 49921 && v10 != 50175 && v10 != 50177)
    {
      goto LABEL_29;
    }
  }

  else if (v10 != 49665 && v10 != 49668 && v10 != 49919)
  {
    goto LABEL_29;
  }

  return result;
}

void DaleController_BootROM::getBoardParameters(DaleController_BootROM *this@<X0>, uint64_t a2@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x110uLL);
  v4->__shared_owners_ = 0;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_1F5EFFBC8;
  v5 = operator new(0x18uLL);
  *(&v80 + 1) = v5 + 3;
  *&v81 = v5 + 3;
  *v5 = xmmword_1E876DEB0;
  v5[2] = @"BbGoldCertId";
  *&v80 = v5;
  DaleCommon::DalePersonalizationParams::DalePersonalizationParams(&v4[1].__vftable, &v80);
  operator delete(v5);
  v77 = v4 + 1;
  v78 = v4;
  *bytes = 0;
  *v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v75.__r_.__value_.__s.__data_[0] = 0;
  LogInstance = ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: >>send BROM_CMD_FLB_GET_EFUSE_PUBLIC\n", "DaleController_BootROM", "getBoardParameters");
  v8 = *(this + 3);
  LOBYTE(__p[0]) = -62;
  v9 = support::transport::airship::write(*(v8 + 8), __p, 1uLL);
  if ((v9 & 1) == 0)
  {
    v58 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v58, 2, "%s::%s: failed to write BROM_CMD_FLB_GET_EFUSE_PUBLIC\n");
    goto LABEL_66;
  }

  v10 = support::transport::airship::read(*(*(this + 3) + 8), &v75, 1uLL);
  if ((v10 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v75.__r_.__value_.__s.__data_[0] != 194)
  {
LABEL_50:
    v60 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v60, 2, "%s::%s: invalid ACK (0x%x) for BROM_CMD_FLB_GET_EFUSE_PUBLIC\n", "DaleController_BootROM", "getBoardParameters", v75.__r_.__value_.__s.__data_[0]);
    goto LABEL_66;
  }

  v11 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v11, 3, "%s::%s: <<rcv FLB_MSG_GET_HW_INFO\n", "DaleController_BootROM", "getBoardParameters");
  *__p = xmmword_1E5390F30;
  v12 = support::transport::airship::write(*(*(this + 3) + 8), __p, 0x10uLL);
  if ((v12 & 1) == 0)
  {
    v61 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to write FLB_MSG_GET_HW_INFO\n", "DaleController_BootROM", "getBoardParameters");
    goto LABEL_66;
  }

  memset(__p, 0, sizeof(__p));
  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 3, "%s::%s: <<rcv FLB_MSG_GET_HW_INFO ACK\n", "DaleController_BootROM", "getBoardParameters");
  v14 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v14 & 1) == 0)
  {
    v62 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v62, 2, "%s::%s: failed to read rsp for FLB_MSG_ACK_BIN_HEADER\n");
    goto LABEL_66;
  }

  v15 = checkStatusInfo(__p, 49665, 0);
  if ((v15 & 1) == 0)
  {
    v63 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v63, 2, "%s::%s: check status info for FLB_MSG_ACK_HW_INFO failed\n");
    goto LABEL_66;
  }

  LODWORD(v75.__r_.__value_.__l.__data_) = 0;
  *(v75.__r_.__value_.__r.__words + 4) = 0;
  v16 = ACFULogging::getLogInstance(v15);
  ACFULogging::handleMessage(v16, 3, "%s::%s: <<rcv FLBMsgHwInfo\n", "DaleController_BootROM", "getBoardParameters");
  v17 = support::transport::airship::read(*(*(this + 3) + 8), &v75, 0xCuLL);
  if ((v17 & 1) == 0)
  {
    v64 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v64, 2, "%s::%s: failed to read rsp for FLBMsgHwInfo\n", "DaleController_BootROM", "getBoardParameters");
    goto LABEL_66;
  }

  v18 = ACFULogging::getLogInstance(v17);
  v19 = ACFULogging::handleMessage(v18, 3, "%s::%s: hw info bytes: \n", "DaleController_BootROM", "getBoardParameters");
  ACFULogging::getLogInstance(v19);
  v20 = operator new(0x30uLL);
  strcpy(v20, "DaleController_BootROM::getBoardParameters");
  __p[0] = v20;
  *&__p[1] = xmmword_1E5390F40;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v21.i32[0] = v75.__r_.__value_.__l.__data_;
  v22 = vrev64_s16(*&vmovl_u8(v21));
  *bytes = vuzp1_s8(v22, v22).u32[0];
  v23 = *MEMORY[0x1E695E480];
  v24 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
  v4[1].__shared_owners_ = v24;
  LOBYTE(v4[1].__shared_weak_owners_) = v24 != 0;
  *v83 = *(v75.__r_.__value_.__r.__words + 4);
  v25 = CFDataCreate(v23, v83, 8);
  v4[2].__shared_weak_owners_ = v25;
  LOBYTE(v4[3].__vftable) = v25 != 0;
  memset(__p, 0, sizeof(__p));
  v26 = ACFULogging::getLogInstance(v25);
  ACFULogging::handleMessage(v26, 3, "%s::%s: <<rcv FLB_MSG_EFUSE_PUBLIC_INFO_STATUS ACK\n", "DaleController_BootROM", "getBoardParameters");
  v27 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v27 & 1) == 0)
  {
    goto LABEL_55;
  }

  v28 = checkStatusInfo(__p, 49919, 0);
  if ((v28 & 1) == 0)
  {
    v66 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v66, 2, "%s::%s: check status info for FLB_MSG_EFUSE_PUBLIC_INFO_STATUS failed\n");
    goto LABEL_66;
  }

  v75.__r_.__value_.__s.__data_[0] = 0;
  v29 = ACFULogging::getLogInstance(v28);
  ACFULogging::handleMessage(v29, 3, "%s::%s: >>send BROM_CMD_FLB_GET_EFUSE_PUBLIC\n", "DaleController_BootROM", "getBoardParameters");
  v30 = *(this + 3);
  LOBYTE(__p[0]) = -62;
  v31 = support::transport::airship::write(*(v30 + 8), __p, 1uLL);
  if ((v31 & 1) == 0)
  {
    v67 = ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage(v67, 2, "%s::%s: failed to write BROM_CMD_FLB_GET_EFUSE_PUBLIC\n");
    goto LABEL_66;
  }

  v10 = support::transport::airship::read(*(*(this + 3) + 8), &v75, 1uLL);
  if ((v10 & 1) == 0)
  {
LABEL_49:
    v59 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v59, 2, "%s::%s: failed to read ACK for BROM_CMD_FLB_GET_EFUSE_PUBLIC\n");
    goto LABEL_66;
  }

  if (v75.__r_.__value_.__s.__data_[0] != 194)
  {
    goto LABEL_50;
  }

  __p[0] = 0;
  __p[1] = 0;
  v32 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v32, 3, "%s::%s: <<rcv FLB_MSG_GET_ROOT_PUBK_HASH\n", "DaleController_BootROM", "getBoardParameters");
  *__p = xmmword_1E5390F50;
  v33 = support::transport::airship::write(*(*(this + 3) + 8), __p, 0x10uLL);
  if ((v33 & 1) == 0)
  {
    v68 = ACFULogging::getLogInstance(v33);
    ACFULogging::handleMessage(v68, 2, "%s::%s: failed to write FLB_MSG_GET_ROOT_PUBK_HASH\n", "DaleController_BootROM", "getBoardParameters");
    goto LABEL_66;
  }

  memset(__p, 0, sizeof(__p));
  v34 = ACFULogging::getLogInstance(v33);
  ACFULogging::handleMessage(v34, 3, "%s::%s: <<rcv FLB_MSG_ACK_ROOT_PUBK_HASH ACK\n", "DaleController_BootROM", "getBoardParameters");
  v27 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v27 & 1) == 0)
  {
LABEL_55:
    v65 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v65, 2, "%s::%s: failed to read rsp for FLBMsgStatus\n");
    goto LABEL_66;
  }

  v35 = checkStatusInfo(__p, 49668, 0);
  if ((v35 & 1) == 0)
  {
    v69 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v69, 2, "%s::%s: check status info for FLB_MSG_ACK_ROOT_PUBK_HASH failed\n");
    goto LABEL_66;
  }

  v36 = support::transport::airship::read(*(*(this + 3) + 8), &v80, 0x30uLL);
  if ((v36 & 1) == 0)
  {
    v70 = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(v70, 2, "%s::%s: failed to read pkhash\n", "DaleController_BootROM", "getBoardParameters");
    goto LABEL_66;
  }

  if (*(this + 4) != v80 || *(this + 5) != *(&v80 + 1) || *(this + 6) != v81 || *(this + 7) != *(&v81 + 1) || *(this + 8) != v82 || *(this + 9) != *(&v82 + 1))
  {
    v42 = ACFULogging::getLogInstance(v82);
    v43 = ACFULogging::handleMessage(v42, 3, "%s::%s: pkhash bytes: \n", "DaleController_BootROM", "getBoardParameters");
    ACFULogging::getLogInstance(v43);
    strcpy(&v74, "DaleController_BootROM");
    *(&v74.__r_.__value_.__s + 23) = 22;
    v44 = std::string::append(&v74, "::", 2uLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v75, "getBoardParameters", 0x12uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    __p[2] = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageBinary();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_37:
        if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_38:
          LODWORD(__p[0]) = bswap32(v80);
          v48 = CFDataCreate(v23, __p, 4);
          v4[9].__shared_weak_owners_ = v48;
          LOBYTE(v4[10].__vftable) = v48 != 0;
          goto LABEL_40;
        }

LABEL_47:
        operator delete(v74.__r_.__value_.__l.__data_);
        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    operator delete(v75.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  v49 = ACFULogging::getLogInstance(v82);
  v48 = ACFULogging::handleMessage(v49, 4, "%s::%s: pkhash is all zeros\n", "DaleController_BootROM", "getBoardParameters");
LABEL_40:
  memset(__p, 0, sizeof(__p));
  v50 = ACFULogging::getLogInstance(v48);
  ACFULogging::handleMessage(v50, 3, "%s::%s: <<rcv FLB_MSG_EFUSE_PUBLIC_INFO_STATUS ACK\n", "DaleController_BootROM", "getBoardParameters");
  v51 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v51 & 1) == 0)
  {
    v71 = ACFULogging::getLogInstance(v51);
    ACFULogging::handleMessage(v71, 2, "%s::%s: failed to read rsp for FLBMsgStatus\n");
    goto LABEL_66;
  }

  v52 = checkStatusInfo(__p, 49919, 0);
  if ((v52 & 1) == 0)
  {
    v72 = ACFULogging::getLogInstance(v52);
    ACFULogging::handleMessage(v72, 2, "%s::%s: check status info for FLB_MSG_EFUSE_PUBLIC_INFO_STATUS failed\n");
LABEL_66:
    v77 = 0;
    v78 = 0;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v55 = 3000;
    v56 = v77;
    v57 = v78;
    if (v78)
    {
      goto LABEL_43;
    }

LABEL_69:
    *a2 = v56;
    *(a2 + 8) = 0;
    *(a2 + 16) = v55;
    goto LABEL_70;
  }

  DaleCommon::DalePersonalizationParams::logParameters(&v4[1]);
  v54 = ACFULogging::getLogInstance(v53);
  ACFULogging::handleMessage(v54, 3, "%s::%s: successfully retrieved board parameters in bootrom\n", "DaleController_BootROM", "getBoardParameters");
  v55 = 0;
  v56 = v77;
  v57 = v78;
  if (!v78)
  {
    goto LABEL_69;
  }

LABEL_43:
  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  *a2 = v56;
  *(a2 + 8) = v57;
  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a2 + 16) = v55;
  if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

LABEL_70:
  v73 = v78;
  if (v78)
  {
    if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v73->__on_zero_shared)(v73);
      std::__shared_weak_count::__release_weak(v73);
    }
  }
}

void DaleController_BootROM::~DaleController_BootROM(DaleController_BootROM *this)
{
  *this = &unk_1F5EFFB90;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      support::transport::airship::~airship(v2);
      operator delete(v3);
    }

    operator delete(v1);
  }
}

{
  *this = &unk_1F5EFFB90;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = this;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    this = v2;
  }

  operator delete(this);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  DaleTransport_BootLoader::create(1, &__p);
  v3 = __p;
  __p = 0;
  v4 = *(v1 + 24);
  *(v1 + 24) = v3;
  if (v4)
  {
    v5 = v4[1];
    v4[1] = 0;
    if (v5)
    {
      support::transport::airship::~airship(v5);
      operator delete(v6);
    }

    operator delete(v4);
    v7 = __p;
    __p = 0;
    if (v7)
    {
      v8 = v7[1];
      v7[1] = 0;
      if (v8)
      {
        support::transport::airship::~airship(v8);
        operator delete(v9);
      }

      operator delete(v7);
    }

    v3 = *(v1 + 24);
  }

  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create transport\n", "DaleController_BootROM", "operator()");
  }

  *(v1 + 8) = v3 != 0;
}

void *std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E69262B0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_emplace<DaleCommon::DalePersonalizationParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EFFBC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t *BBUEUR25UpdateSource::getItems(BBUEUR25UpdateSource *this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v3 = *(this + 22);
  SequencerRamType = BBUEURUpdateSource::getSequencerRamType(this);
  if (v3)
  {
    v5 = BBUProgrammer::Item::createFromImage(SequencerRamType, v3);
    v6 = operator new(0x18uLL);
    v6[1] = v2;
    v6[2] = v5;
    v7 = *v2;
    *v6 = *v2;
    *(v7 + 8) = v6;
    *v2 = v6;
    ++v2[2];
  }

  v8 = *(this + 23);
  SignedFirmwareSOCViewType = BBUEURUpdateSource::getSignedFirmwareSOCViewType(this);
  if (v8)
  {
    v10 = BBUProgrammer::Item::createFromImage(SignedFirmwareSOCViewType, v8);
    v11 = operator new(0x18uLL);
    v11[1] = v2;
    v11[2] = v10;
    v12 = *v2;
    *v11 = *v2;
    *(v12 + 8) = v11;
    *v2 = v11;
    ++v2[2];
  }

  v13 = *(this + 25);
  XBLscType = BBUEURUpdateSource::getXBLscType(this);
  if (v13)
  {
    v15 = BBUProgrammer::Item::createFromImage(XBLscType, v13);
    v16 = operator new(0x18uLL);
    v16[1] = v2;
    v16[2] = v15;
    v17 = *v2;
    *v16 = *v2;
    *(v17 + 8) = v16;
    *v2 = v16;
    ++v2[2];
  }

  v18 = *(this + 34);
  APDPType = BBUEURUpdateSource::getAPDPType(this);
  if (v18)
  {
    v20 = BBUProgrammer::Item::createFromImage(APDPType, v18);
    v21 = operator new(0x18uLL);
    v21[1] = v2;
    v21[2] = v20;
    v22 = *v2;
    *v21 = *v2;
    *(v22 + 8) = v21;
    *v2 = v21;
    ++v2[2];
  }

  v23 = *(this + 35);
  DEVCFGType = BBUEURUpdateSource::getDEVCFGType(this);
  if (v23)
  {
    v25 = BBUProgrammer::Item::createFromImage(DEVCFGType, v23);
    v26 = operator new(0x18uLL);
    v26[1] = v2;
    v26[2] = v25;
    v27 = *v2;
    *v26 = *v2;
    *(v27 + 8) = v26;
    *v2 = v26;
    ++v2[2];
  }

  v28 = *(this + 50);
  SECType = BBUEURUpdateSource::getSECType(this);
  if (v28)
  {
    v30 = BBUProgrammer::Item::createFromImage(SECType, v28);
    v31 = operator new(0x18uLL);
    v31[1] = v2;
    v31[2] = v30;
    v32 = *v2;
    *v31 = *v2;
    *(v32 + 8) = v31;
    *v2 = v31;
    ++v2[2];
  }

  v33 = *(this + 36);
  HYPType = BBUEURUpdateSource::getHYPType(this);
  if (v33)
  {
    v35 = BBUProgrammer::Item::createFromImage(HYPType, v33);
    v36 = operator new(0x18uLL);
    v36[1] = v2;
    v36[2] = v35;
    v37 = *v2;
    *v36 = *v2;
    *(v37 + 8) = v36;
    *v2 = v36;
    ++v2[2];
  }

  v38 = *(this + 37);
  AOPType = BBUEURUpdateSource::getAOPType(this);
  if (v38)
  {
    v40 = BBUProgrammer::Item::createFromImage(AOPType, v38);
    v41 = operator new(0x18uLL);
    v41[1] = v2;
    v41[2] = v40;
    v42 = *v2;
    *v41 = *v2;
    *(v42 + 8) = v41;
    *v2 = v41;
    ++v2[2];
  }

  v43 = *(this + 26);
  APPSType = BBUEURUpdateSource::getAPPSType(this);
  if (v43)
  {
    v45 = BBUProgrammer::Item::createFromImage(APPSType, v43);
    v46 = operator new(0x18uLL);
    v46[1] = v2;
    v46[2] = v45;
    v47 = *v2;
    *v46 = *v2;
    *(v47 + 8) = v46;
    *v2 = v46;
    ++v2[2];
  }

  v48 = *(this + 27);
  QDSP6SWType = BBUEURUpdateSource::getQDSP6SWType(this);
  if (v48)
  {
    v50 = BBUProgrammer::Item::createFromImage(QDSP6SWType, v48);
    v51 = operator new(0x18uLL);
    v51[1] = v2;
    v51[2] = v50;
    v52 = *v2;
    *v51 = *v2;
    *(v52 + 8) = v51;
    *v2 = v51;
    ++v2[2];
  }

  v53 = *(this + 28);
  TZType = BBUEURUpdateSource::getTZType(this);
  if (v53)
  {
    v55 = BBUProgrammer::Item::createFromImage(TZType, v53);
    v56 = operator new(0x18uLL);
    v56[1] = v2;
    v56[2] = v55;
    v57 = *v2;
    *v56 = *v2;
    *(v57 + 8) = v56;
    *v2 = v56;
    ++v2[2];
  }

  v58 = **(this + 29);
  EFS1Type = BBUEURUpdateSource::getEFS1Type(this);
  if (v58)
  {
    v60 = BBUProgrammer::Item::createFromImage(EFS1Type, v58);
    v61 = operator new(0x18uLL);
    v61[1] = v2;
    v61[2] = v60;
    v62 = *v2;
    *v61 = *v2;
    *(v62 + 8) = v61;
    *v2 = v61;
    ++v2[2];
  }

  v63 = *(*(this + 29) + 8);
  EFS2Type = BBUEURUpdateSource::getEFS2Type(this);
  if (v63)
  {
    v65 = BBUProgrammer::Item::createFromImage(EFS2Type, v63);
    v66 = operator new(0x18uLL);
    v66[1] = v2;
    v66[2] = v65;
    v67 = *v2;
    *v66 = *v2;
    *(v67 + 8) = v66;
    *v2 = v66;
    ++v2[2];
  }

  v68 = *(*(this + 29) + 16);
  EFS3Type = BBUEURUpdateSource::getEFS3Type(this);
  if (v68)
  {
    v70 = BBUProgrammer::Item::createFromImage(EFS3Type, v68);
    v71 = operator new(0x18uLL);
    v71[1] = v2;
    v71[2] = v70;
    v72 = *v2;
    *v71 = *v2;
    *(v72 + 8) = v71;
    *v2 = v71;
    ++v2[2];
  }

  v73 = *(this + 32);
  ACDBType = BBUEURUpdateSource::getACDBType(this);
  if (v73)
  {
    v75 = BBUProgrammer::Item::createFromImage(ACDBType, v73);
    v76 = operator new(0x18uLL);
    v76[1] = v2;
    v76[2] = v75;
    v77 = *v2;
    *v76 = *v2;
    *(v77 + 8) = v76;
    *v2 = v76;
    ++v2[2];
  }

  v78 = *(this + 5);
  CalType = BBUEURUpdateSource::getCalType(this);
  if (v78)
  {
    v80 = BBUProgrammer::Item::createFromImage(CalType, v78);
    v81 = operator new(0x18uLL);
    v81[1] = v2;
    v81[2] = v80;
    v82 = *v2;
    *v81 = *v2;
    *(v82 + 8) = v81;
    *v2 = v81;
    ++v2[2];
  }

  v83 = *(this + 6);
  ProvType = BBUEURUpdateSource::getProvType(this);
  if (v83)
  {
    v85 = BBUProgrammer::Item::createFromImage(ProvType, v83);
    v86 = operator new(0x18uLL);
    v86[1] = v2;
    v86[2] = v85;
    v87 = *v2;
    *v86 = *v2;
    *(v87 + 8) = v86;
    *v2 = v86;
    ++v2[2];
  }

  v88 = *(this + 7);
  PacType = BBUEURUpdateSource::getPacType(this);
  if (v88)
  {
    v90 = BBUProgrammer::Item::createFromImage(PacType, v88);
    v91 = operator new(0x18uLL);
    v91[1] = v2;
    v91[2] = v90;
    v92 = *v2;
    *v91 = *v2;
    *(v92 + 8) = v91;
    *v2 = v91;
    ++v2[2];
  }

  v93 = *(this + 33);
  BBCFGType = BBUEURUpdateSource::getBBCFGType(this);
  if (v93)
  {
    v95 = BBUProgrammer::Item::createFromImage(BBCFGType, v93);
    v96 = operator new(0x18uLL);
    v96[1] = v2;
    v96[2] = v95;
    v97 = *v2;
    *v96 = *v2;
    *(v97 + 8) = v96;
    *v2 = v96;
    ++v2[2];
  }

  v98 = *(this + 38);
  MDMDDRType = BBUEURUpdateSource::getMDMDDRType(this);
  if (v98)
  {
    v100 = BBUProgrammer::Item::createFromImage(MDMDDRType, v98);
    v101 = operator new(0x18uLL);
    v101[1] = v2;
    v101[2] = v100;
    v102 = *v2;
    *v101 = *v2;
    *(v102 + 8) = v101;
    *v2 = v101;
    ++v2[2];
  }

  v103 = *(this + 39);
  OEMMiscType = BBUEURUpdateSource::getOEMMiscType(this);
  if (v103)
  {
    v105 = BBUProgrammer::Item::createFromImage(OEMMiscType, v103);
    v106 = operator new(0x18uLL);
    v106[1] = v2;
    v106[2] = v105;
    v107 = *v2;
    *v106 = *v2;
    *(v107 + 8) = v106;
    *v2 = v106;
    ++v2[2];
  }

  v108 = *(this + 40);
  QTIMiscType = BBUEURUpdateSource::getQTIMiscType(this);
  if (v108)
  {
    v110 = BBUProgrammer::Item::createFromImage(QTIMiscType, v108);
    v111 = operator new(0x18uLL);
    v111[1] = v2;
    v111[2] = v110;
    v112 = *v2;
    *v111 = *v2;
    *(v112 + 8) = v111;
    *v2 = v111;
    ++v2[2];
  }

  v113 = *(this + 41);
  XblCfgType = BBUEURUpdateSource::getXblCfgType(this);
  if (v113)
  {
    v115 = BBUProgrammer::Item::createFromImage(XblCfgType, v113);
    v116 = operator new(0x18uLL);
    v116[1] = v2;
    v116[2] = v115;
    v117 = *v2;
    *v116 = *v2;
    *(v117 + 8) = v116;
    *v2 = v116;
    ++v2[2];
  }

  v118 = *(this + 42);
  UEFIType = BBUEURUpdateSource::getUEFIType(this);
  if (v118)
  {
    v120 = BBUProgrammer::Item::createFromImage(UEFIType, v118);
    v121 = operator new(0x18uLL);
    v121[1] = v2;
    v121[2] = v120;
    v122 = *v2;
    *v121 = *v2;
    *(v122 + 8) = v121;
    *v2 = v121;
    ++v2[2];
  }

  v123 = *(this + 43);
  XblSupportType = BBUEURUpdateSource::getXblSupportType(this);
  if (v123)
  {
    v125 = BBUProgrammer::Item::createFromImage(XblSupportType, v123);
    v126 = operator new(0x18uLL);
    v126[1] = v2;
    v126[2] = v125;
    v127 = *v2;
    *v126 = *v2;
    *(v127 + 8) = v126;
    *v2 = v126;
    ++v2[2];
  }

  v128 = *(this + 44);
  ShrmType = BBUEURUpdateSource::getShrmType(this);
  if (v128)
  {
    v130 = BBUProgrammer::Item::createFromImage(ShrmType, v128);
    v131 = operator new(0x18uLL);
    v131[1] = v2;
    v131[2] = v130;
    v132 = *v2;
    *v131 = *v2;
    *(v132 + 8) = v131;
    *v2 = v131;
    ++v2[2];
  }

  v133 = *(this + 45);
  CpucpType = BBUEURUpdateSource::getCpucpType(this);
  if (v133)
  {
    v135 = BBUProgrammer::Item::createFromImage(CpucpType, v133);
    v136 = operator new(0x18uLL);
    v136[1] = v2;
    v136[2] = v135;
    v137 = *v2;
    *v136 = *v2;
    *(v137 + 8) = v136;
    *v2 = v136;
    ++v2[2];
  }

  v138 = *(this + 46);
  AOPDevCfgType = BBUEURUpdateSource::getAOPDevCfgType(this);
  if (v138)
  {
    v140 = BBUProgrammer::Item::createFromImage(AOPDevCfgType, v138);
    v141 = operator new(0x18uLL);
    v141[1] = v2;
    v141[2] = v140;
    v142 = *v2;
    *v141 = *v2;
    *(v142 + 8) = v141;
    *v2 = v141;
    ++v2[2];
  }

  v143 = *(this + 47);
  Qdsp6SwDtbsType = BBUEURUpdateSource::getQdsp6SwDtbsType(this);
  if (v143)
  {
    v145 = BBUProgrammer::Item::createFromImage(Qdsp6SwDtbsType, v143);
    v146 = operator new(0x18uLL);
    v146[1] = v2;
    v146[2] = v145;
    v147 = *v2;
    *v146 = *v2;
    *(v147 + 8) = v146;
    *v2 = v146;
    ++v2[2];
  }

  v148 = *(this + 48);
  Qupv3FwType = BBUEURUpdateSource::getQupv3FwType(this);
  if (v148)
  {
    v150 = BBUProgrammer::Item::createFromImage(Qupv3FwType, v148);
    v151 = operator new(0x18uLL);
    v151[1] = v2;
    v151[2] = v150;
    v152 = *v2;
    *v151 = *v2;
    *(v152 + 8) = v151;
    *v2 = v151;
    ++v2[2];
  }

  v153 = *(this + 49);
  PTType = BBUEURUpdateSource::getPTType(this);
  if (v153)
  {
    v155 = BBUProgrammer::Item::createFromImage(PTType, v153);
    v156 = operator new(0x18uLL);
    v156[1] = v2;
    v156[2] = v155;
    v157 = *v2;
    *v156 = *v2;
    *(v157 + 8) = v156;
    *v2 = v156;
    ++v2[2];
  }

  return v2;
}