void sub_272669000(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272668FD4);
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, unsigned int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Downlink_Output_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_Output_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_Output_Port_ID::Hardware_DSP_Output]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "(vp::vx::Downlink_Output_Port_ID)1]";
      break;
    case 2:
      result = "(vp::vx::Downlink_Output_Port_ID)2]";
      break;
    case 3:
      result = "(vp::vx::Downlink_Output_Port_ID)3]";
      break;
    case 4:
      result = "(vp::vx::Downlink_Output_Port_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_Output_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_Output_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_Output_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_Output_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_Output_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_Output_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_Output_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_Output_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_Output_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_Output_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_Output_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_Output_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_Output_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_Output_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_Output_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_Output_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_Output_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_Output_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_Output_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_Output_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_Output_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_Output_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_Output_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_Output_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_Output_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_Output_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_Output_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_Output_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_Output_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_Output_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_Output_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_Output_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_Output_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_Output_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_Output_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_Output_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_Output_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_Output_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_Output_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_Output_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_Output_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_Output_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_Output_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_Output_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_Output_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_Output_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_Output_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_Output_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_Output_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_Output_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_Output_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_Output_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_Output_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_Output_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_Output_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_Output_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_Output_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_Output_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_Output_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_Output_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_Output_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_Output_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_Output_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_Output_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_Output_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_Output_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_Output_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_Output_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_Output_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_Output_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_Output_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_Output_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_Output_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_Output_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_Output_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_Output_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_Output_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_Output_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_Output_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_Output_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_Output_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_Output_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_Output_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_Output_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_Output_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_Output_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_Output_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_Output_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_Output_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_Output_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_Output_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_Output_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_Output_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_Output_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_Output_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_Output_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_Output_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_Output_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_Output_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_Output_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_Output_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_Output_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_Output_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_Output_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_Output_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_Output_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_Output_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_Output_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_Output_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_Output_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_Output_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_Output_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_Output_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_Output_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_Output_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_Output_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_Output_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_Output_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_Output_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_Output_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_Output_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_Output_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_Output_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_Output_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, unsigned int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Uplink_Output_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_Output_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Mic_Output]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Ref_Output]";
      break;
    case 2:
      result = "vp::vx::Uplink_Output_Port_ID::Hardware_DSP_Mic_Clip_Data_Output]";
      break;
    case 3:
      result = "vp::vx::Uplink_Output_Port_ID::Echo_DSP_Mic_Output]";
      break;
    case 4:
      result = "vp::vx::Uplink_Output_Port_ID::Content_DSP_Client_Output]";
      break;
    case 5:
      result = "(vp::vx::Uplink_Output_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Uplink_Output_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_Output_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_Output_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_Output_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_Output_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_Output_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_Output_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_Output_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_Output_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_Output_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_Output_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_Output_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_Output_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_Output_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_Output_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_Output_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_Output_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_Output_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_Output_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_Output_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_Output_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_Output_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_Output_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_Output_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_Output_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_Output_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_Output_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_Output_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_Output_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_Output_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_Output_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_Output_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_Output_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_Output_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_Output_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_Output_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_Output_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_Output_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_Output_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_Output_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_Output_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_Output_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_Output_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_Output_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_Output_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_Output_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_Output_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_Output_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_Output_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_Output_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_Output_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_Output_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_Output_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_Output_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_Output_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_Output_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_Output_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_Output_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_Output_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_Output_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_Output_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_Output_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_Output_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_Output_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_Output_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_Output_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_Output_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_Output_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_Output_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_Output_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_Output_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_Output_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_Output_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_Output_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_Output_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_Output_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_Output_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_Output_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_Output_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_Output_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_Output_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_Output_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_Output_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_Output_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_Output_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_Output_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_Output_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_Output_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_Output_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_Output_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_Output_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_Output_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_Output_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_Output_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_Output_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_Output_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_Output_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_Output_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_Output_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_Output_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_Output_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_Output_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_Output_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_Output_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_Output_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_Output_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_Output_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_Output_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_Output_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_Output_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_Output_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_Output_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_Output_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_Output_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_Output_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_Output_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_Output_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_Output_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_Output_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_Output_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_Output_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_Output_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_Output_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, unsigned int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Downlink_Input_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_Input_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_Default_Audio_Input]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_System_Audio_Input]";
      break;
    case 2:
      result = "vp::vx::Downlink_Input_Port_ID::Dynamics_DSP_Other_Audio_Input]";
      break;
    case 3:
      result = "vp::vx::Downlink_Input_Port_ID::Hardware_DSP_Speaker_Telemetry_Input]";
      break;
    case 4:
      result = "(vp::vx::Downlink_Input_Port_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_Input_Port_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_Input_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_Input_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_Input_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_Input_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_Input_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_Input_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_Input_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_Input_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_Input_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_Input_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_Input_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_Input_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_Input_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_Input_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_Input_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_Input_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_Input_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_Input_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_Input_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_Input_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_Input_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_Input_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_Input_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_Input_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_Input_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_Input_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_Input_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_Input_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_Input_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_Input_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_Input_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_Input_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_Input_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_Input_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_Input_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_Input_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_Input_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_Input_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_Input_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_Input_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_Input_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_Input_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_Input_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_Input_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_Input_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_Input_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_Input_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_Input_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_Input_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_Input_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_Input_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_Input_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_Input_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_Input_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_Input_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_Input_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_Input_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_Input_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_Input_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_Input_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_Input_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_Input_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_Input_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_Input_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_Input_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_Input_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_Input_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_Input_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_Input_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_Input_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_Input_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_Input_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_Input_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_Input_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_Input_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_Input_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_Input_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_Input_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_Input_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_Input_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_Input_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_Input_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_Input_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_Input_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_Input_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_Input_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_Input_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_Input_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_Input_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_Input_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_Input_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_Input_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_Input_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_Input_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_Input_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_Input_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_Input_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_Input_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_Input_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_Input_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_Input_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_Input_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_Input_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_Input_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_Input_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_Input_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_Input_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_Input_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_Input_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_Input_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_Input_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_Input_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_Input_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_Input_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_Input_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_Input_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_Input_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_Input_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_Input_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_Input_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_Input_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_Input_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_Input_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx20get_log_context_infoEPKNS9_15IO_Port_FactoryEENK3__0clEvEUlT_E_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_20Uplink_Input_Port_IDENS9_22Downlink_Input_Port_IDENS9_21Uplink_Output_Port_IDENS9_23Downlink_Output_Port_IDEEEEEEEDcSE_DpT0_(uint64_t a1, unsigned int *a2)
{
  v2 = vp::detail::reflect_value_name<(vp::vx::Uplink_Input_Port_ID)0,128ul>(*a2);
  if (v3)
  {
    v4 = &v2[v3];
    for (i = v3; i; --i)
    {
      v6 = *--v4;
      if (v6 == 58)
      {
        v7 = v4 - v2 + 1;
        if (v3 < v7)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v2[v7];
      }
    }
  }

  v7 = 0;
  return &v2[v7];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_Input_Port_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_Input_Port_ID::Hardware_DSP_Mic_Input]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_Input_Port_ID::Hardware_DSP_Ref_Input]";
      break;
    case 2:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Mic_Input]";
      break;
    case 3:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Ref_Input]";
      break;
    case 4:
      result = "vp::vx::Uplink_Input_Port_ID::Echo_DSP_Mic_Clip_Data_Input]";
      break;
    case 5:
      result = "vp::vx::Uplink_Input_Port_ID::Content_DSP_Mic_Input]";
      break;
    case 6:
      result = "(vp::vx::Uplink_Input_Port_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_Input_Port_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_Input_Port_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_Input_Port_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_Input_Port_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_Input_Port_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_Input_Port_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_Input_Port_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_Input_Port_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_Input_Port_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_Input_Port_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_Input_Port_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_Input_Port_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_Input_Port_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_Input_Port_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_Input_Port_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_Input_Port_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_Input_Port_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_Input_Port_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_Input_Port_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_Input_Port_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_Input_Port_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_Input_Port_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_Input_Port_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_Input_Port_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_Input_Port_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_Input_Port_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_Input_Port_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_Input_Port_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_Input_Port_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_Input_Port_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_Input_Port_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_Input_Port_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_Input_Port_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_Input_Port_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_Input_Port_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_Input_Port_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_Input_Port_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_Input_Port_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_Input_Port_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_Input_Port_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_Input_Port_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_Input_Port_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_Input_Port_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_Input_Port_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_Input_Port_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_Input_Port_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_Input_Port_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_Input_Port_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_Input_Port_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_Input_Port_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_Input_Port_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_Input_Port_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_Input_Port_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_Input_Port_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_Input_Port_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_Input_Port_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_Input_Port_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_Input_Port_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_Input_Port_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_Input_Port_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_Input_Port_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_Input_Port_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_Input_Port_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_Input_Port_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_Input_Port_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_Input_Port_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_Input_Port_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_Input_Port_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_Input_Port_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_Input_Port_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_Input_Port_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_Input_Port_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_Input_Port_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_Input_Port_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_Input_Port_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_Input_Port_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_Input_Port_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_Input_Port_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_Input_Port_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_Input_Port_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_Input_Port_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_Input_Port_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_Input_Port_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_Input_Port_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_Input_Port_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_Input_Port_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_Input_Port_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_Input_Port_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_Input_Port_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_Input_Port_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_Input_Port_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_Input_Port_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_Input_Port_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_Input_Port_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_Input_Port_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_Input_Port_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_Input_Port_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_Input_Port_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_Input_Port_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_Input_Port_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_Input_Port_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_Input_Port_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_Input_Port_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_Input_Port_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_Input_Port_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_Input_Port_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_Input_Port_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_Input_Port_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_Input_Port_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_Input_Port_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_Input_Port_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_Input_Port_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_Input_Port_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_Input_Port_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_Input_Port_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_Input_Port_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_Input_Port_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_Input_Port_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_Input_Port_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_Input_Port_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_Input_Port_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_Input_Port_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::IO_Port_Factory::new_port(std::pmr *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  default_resource = std::pmr::get_default_resource(a1);
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = default_resource;
  v7 = vp::vx::detail::get_value<BOOL>(a1 + 32);
  if (v7)
  {
    log = vp::get_log(v7);
    v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      log_context_info = vp::vx::get_log_context_info(__p, a1);
      v11 = __p[23];
      v12 = __p[23];
      v13 = *&__p[8];
      v14 = vp::get_log(log_context_info);
      v9 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v12 >= 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v13;
        }

        v16 = *__p;
        if (v12 >= 0)
        {
          v16 = __p;
        }

        if (v15)
        {
          v17 = " ";
        }

        else
        {
          v17 = "";
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v16;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = v17;
        _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%s%swill create port", buf, 0x16u);
        LOBYTE(v12) = __p[23];
      }

      if ((v12 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v18 = HIDWORD(*(a1 + 1));
    if (v18)
    {
      v19 = v18 == 1;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19;
    v21 = std::pmr::get_default_resource(v9);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v21;
    vp::vx::data_flow::State<void>::get_value(a1 + 30, __p);
    v22 = vp::vx::data_flow::Value::view_storage(__p);
    buf[0] = *v22;
    buf[1] = *(v22 + 16);
    v58 = *(v22 + 32);
    vp::vx::data_flow::Value::~Value(__p);
    v23 = vp::vx::detail::get_value<BOOL>(a1 + 88);
    v24 = v23;
    v25 = std::pmr::get_default_resource(v23);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v25;
    vp::vx::data_flow::State<void>::get_value(a1 + 16, __p);
    v26 = *vp::vx::data_flow::Value::view_storage(__p);
    vp::vx::data_flow::Value::~Value(__p);
    v28 = vp::get_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v44 = v26;
      v29 = vp::vx::get_log_context_info(v59, a1);
      v30 = v62;
      v31 = v62;
      v32 = v60;
      v33 = vp::get_log(v29);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        if (v31 >= 0)
        {
          v34 = v30;
        }

        else
        {
          v34 = v32;
        }

        v35 = *v59;
        if (v31 >= 0)
        {
          v35 = v59;
        }

        v43 = v35;
        if (v34)
        {
          v36 = " ";
        }

        else
        {
          v36 = "";
        }

        v37 = vp::vx::detail::convert_to_c_str(*(a1 + 1));
        if (v20)
        {
          v40 = "input";
        }

        else
        {
          v40 = "output";
        }

        if (v24)
        {
          v41 = "fixed";
        }

        else
        {
          v41 = "variable";
        }

        CA::StreamDescription::AsString(&v45, buf, v38, v39);
        v42 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v45.__r_.__value_.__r.__words[0];
        }

        *__p = 136316674;
        *&__p[4] = v43;
        *&__p[12] = 2080;
        *&__p[14] = v36;
        *&__p[22] = 2080;
        *&__p[24] = v37;
        v49 = 2080;
        v50 = v40;
        v51 = 2080;
        v52 = v41;
        v53 = 1024;
        v54 = v44;
        v55 = 2080;
        v56 = v42;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEBUG, "%s%screating %s %s port with %s block size %u and stream format %s", __p, 0x44u);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        LOBYTE(v31) = v62;
      }

      if ((v31 & 0x80) != 0)
      {
        operator delete(*v59);
      }
    }

    if (v24)
    {
      if (v20)
      {
        v47 = a2;
        *__p = 0;
        *&__p[8] = a2;
        *&__p[16] = xmmword_272756740;
        v45.__r_.__value_.__r.__words[0] = (*(*a2 + 16))(a2, 120, 8);
        *v59 = &v45;
        v60 = &v47;
        v61 = 0;
        *(v45.__r_.__value_.__r.__words[0] + 96) = &unk_2881C6630;
        operator new();
      }

      v46 = a2;
      *__p = 0;
      *&__p[8] = a2;
      *&__p[16] = xmmword_272756710;
      v47 = (*(*a2 + 16))(a2, 112, 8);
      *v59 = &v47;
      v60 = &v46;
      v61 = 0;
      *(v47 + 88) = &unk_2881C6630;
      operator new();
    }

    if (v20)
    {
      v46 = a2;
      *__p = 0;
      *&__p[8] = a2;
      *&__p[16] = xmmword_272756710;
      v47 = (*(*a2 + 16))(a2, 112, 8);
      *v59 = &v47;
      v60 = &v46;
      v61 = 0;
      *(v47 + 88) = &unk_2881C6630;
      operator new();
    }

    v46 = a2;
    *__p = 0;
    *&__p[8] = a2;
    *&__p[16] = xmmword_272756590;
    v47 = (*(*a2 + 16))(a2, 168, 8);
    *v59 = &v47;
    v60 = &v46;
    v61 = 0;
    *(v47 + 144) = &unk_2881C6630;
    operator new();
  }
}

void sub_27266B698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v19 - 128);
  std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>>::reset[abi:ne200100](&a19, 0);
  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  JUMPOUT(0x27266B63CLL);
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 3)
  {
    return "hardware DSP mic output";
  }

  else
  {
    return off_279E4A350[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 2)
  {
    return "dynamics DSP default audio input";
  }

  else
  {
    return off_279E4A4C8[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 4)
  {
    return "hardware DSP mic input";
  }

  else
  {
    return off_279E4A328[v2];
  }
}

void sub_27266BAF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disabled";
        if (v10)
        {
          v13 = "enabled";
        }

        caulk::make_string(&v17, "%s port is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8EC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8EC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8EC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disabled";
        if (v10)
        {
          v13 = "enabled";
        }

        caulk::make_string(&v17, "%s port is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8E78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8E78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::IO_Port_Factory::set_is_enabled(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8E78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Port_Factory::set_block_size(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HIDWORD(*(a1 + 8));
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = (v5 + 16);
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    if (v4)
    {
      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  else if (v4)
  {
LABEL_11:
    operator new();
  }

  operator new();
}

void sub_27266C298(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s port I/O block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8F50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s port I/O block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8F08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Port_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Port_Factory::set_format(__n128 *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HIDWORD(a1->n128_u64[1]);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = a1[1].n128_u64[1];
  if (v5)
  {
    v6 = (v5 + 16);
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    if (v4)
    {
      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  else if (v4)
  {
LABEL_11:
    operator new();
  }

  operator new();
}

void sub_27266CA04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = vp::vx::detail::convert_to_c_str(a1[3]);
        CA::StreamDescription::AsString(&__p, a3, v11, v12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v17, "%s port I/O format is %s", v13, v10, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v17.__r_.__value_.__l.__data_;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v17.__r_.__value_.__r.__words[1] + 7);
        *(&__p.__r_.__value_.__s + 23) = *(&v17.__r_.__value_.__s + 23);
        v16 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B9028;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9028;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9028;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = vp::vx::detail::convert_to_c_str(a1[3]);
        CA::StreamDescription::AsString(&__p, a3, v11, v12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v17, "%s port I/O format is %s", v13, v10, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v17.__r_.__value_.__l.__data_;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v17.__r_.__value_.__r.__words[1] + 7);
        *(&__p.__r_.__value_.__s + 23) = *(&v17.__r_.__value_.__s + 23);
        v16 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B8FE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8FE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Port_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8FE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Property_Setter_Command_Factory::~IO_Property_Setter_Command_Factory(vp::vx::IO_Property_Setter_Command_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 16;
    do
    {
      (*(*(v3 - 8) + 24))(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 48 * v4, 8);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Command_Factory::~IO_Property_Setter_Command_Factory(vp::vx::IO_Property_Setter_Command_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Property_Setter_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v21[0] = a4;
  v21[1] = a5;
  v7 = (*(*a2 + 24))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v19);
    v8 = v19;
    v9 = v20;
    if (v19 != v20)
    {
      do
      {
        v10 = *v8;
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v25 = v11;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12 == 0;
        }

        if (!v13)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v24, &v25, v11 + 48 * v12, v10);
        v15 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16 == 0;
        }

        if (!v17)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v18 = v15 + 48 * v16;
        if (v24 != v18)
        {
          if (!v24)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (v10 < *v24)
          {
            v24 = v18;
LABEL_20:
            boost::container::throw_length_error("flat_map::at key not found", v14);
          }
        }

        if (v24 == v18)
        {
          goto LABEL_20;
        }

        v23 = a3;
        (**(v24 + 8))(v22, v24 + 16, &v23);
        caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::operator()(v21, v22);
        std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](v22);
        ++v8;
      }

      while (v8 != v9);
      v8 = v19;
    }

    if (v8)
    {
      v20 = v8;
      operator delete(v8);
    }
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 4);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[12 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 12;
        *a2 = v7 + 12;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void virtual thunk tovp::vx::IO_Property_Setter_Delegate_Factory::~IO_Property_Setter_Delegate_Factory(vp::vx::IO_Property_Setter_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 16;
    do
    {
      (*(*(v3 - 8) + 24))(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 48 * v4, 8);
  }

  return a1;
}

void vp::vx::IO_Property_Setter_Delegate_Factory::~IO_Property_Setter_Delegate_Factory(vp::vx::IO_Property_Setter_Delegate_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Property_Setter_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v21[0] = a4;
  v21[1] = a5;
  v7 = (*(*a2 + 24))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v19);
    v8 = v19;
    v9 = v20;
    if (v19 != v20)
    {
      do
      {
        v10 = *v8;
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v25 = v11;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12 == 0;
        }

        if (!v13)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(&v24, &v25, v11 + 48 * v12, v10);
        v15 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16 == 0;
        }

        if (!v17)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v18 = v15 + 48 * v16;
        if (v24 != v18)
        {
          if (!v24)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (v10 < *v24)
          {
            v24 = v18;
LABEL_20:
            boost::container::throw_length_error("flat_map::at key not found", v14);
          }
        }

        if (v24 == v18)
        {
          goto LABEL_20;
        }

        v23 = a3;
        (**(v24 + 8))(v22, v24 + 16, &v23);
        caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::operator()(v21, v22);
        std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](v22);
        ++v8;
      }

      while (v8 != v9);
      v8 = v19;
    }

    if (v8)
    {
      v20 = v8;
      operator delete(v8);
    }
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,boost::container::dtl::select1st<vp::vx::Graph_Property_ID>,std::less<vp::vx::Graph_Property_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>*,true>,vp::vx::Graph_Property_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 4);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[12 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 12;
        *a2 = v7 + 12;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void virtual thunk tovp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(vp::vx::IO_Smart_Cover_Detector_Delegate *this)
{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(vp::vx::IO_Smart_Cover_Detector_Delegate *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 5) = &unk_2881C6630;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Smart_Cover_Detector_Delegate::process(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    if (!a2)
    {
      v6 = result;
      result = (*(**(a1 + 24) + 16))(*(a1 + 24));
      v7 = result;
      if ((*(a1 + 8) & 1) != 0 || !result)
      {
        if (*(a1 + 8) && (result & 1) == 0 && *(a1 + 16) == 1)
        {
          result = (*(*v6 + 32))(v11, v6, 1853058404, *(a1 + 12));
          if ((v16 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if (*(a1 + 16) == 1)
          {
            *(a1 + 16) = 0;
          }
        }
      }

      else
      {
        (*(*v6 + 24))(v11, v6, 1853058404);
        v8 = v16;
        if (v16 != 1 || (result = caulk::expected<float,vp::vx::io::Error>::value(v11), *(a1 + 12) = v11[0], *(a1 + 16) = 1, v8 = v16, (v16 & 1) == 0))
        {
          v9 = v12;
          v10 = v14;
          result = v15;
          v13 = 0;
          v14 = 0;
          v12 = 0;
          if (v10 < 0)
          {
            result = (*(*v15 + 24))(v15, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1);
            v8 = v16;
          }

          if ((v8 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }
        }

        if (*(a1 + 16) == 1)
        {
          result = (*(*v6 + 32))(v11, v6, 1853058404, 1.0);
          if ((v16 & 1) == 0 && SHIBYTE(v14) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
          }
        }
      }

      *(a1 + 8) = v7;
    }
  }

  else
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void vp::vx::IO_Smart_Cover_Detector_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *vp::vx::IO_Smart_Cover_Detector_Delegate::get_parameter_ids@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 1853058404;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Smart_Cover_Detector_Delegate_Factory::~IO_Smart_Cover_Detector_Delegate_Factory(vp::vx::IO_Smart_Cover_Detector_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::IO_Smart_Cover_Detector_Delegate_Factory::~IO_Smart_Cover_Detector_Delegate_Factory(vp::vx::IO_Smart_Cover_Detector_Delegate_Factory *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t vp::vx::IO_Smart_Cover_Detector_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    result = (*(*result + 8))(result, 1853058404, 0);
    if (result)
    {
      v8 = (*(*a3 + 16))(a3, 64, 8);
      v9 = *(a1 + 8);
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *(v8 + 40) = &unk_2881C6630;
      operator new();
    }
  }

  return result;
}

vp::vx::IO_Smart_Cover_Detector_Delegate **std::unique_ptr<vp::vx::IO_Smart_Cover_Detector_Delegate,vp::Allocator_Delete<vp::vx::IO_Smart_Cover_Detector_Delegate>>::reset[abi:ne200100](vp::vx::IO_Smart_Cover_Detector_Delegate **result, vp::vx::IO_Smart_Cover_Detector_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Smart_Cover_Detector_Delegate::~IO_Smart_Cover_Detector_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(vp::vx::IO_Speech_Activity_Event_Listener *this)
{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener((this + *(*this - 24)));
}

void vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(caulk::concurrent::messenger **this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = caulk::concurrent::messenger::drain(this[2]);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, (this + 9), "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v12 = this[4];
  if (v12)
  {
    _Block_release(v12);
    this[4] = 0;
  }

  v13 = this[3];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 1));
  this[9] = &unk_2881C6630;
  v14 = this[11];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

{
  vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_27266E4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unsigned int *vp::vx::IO_Speech_Activity_Event_Listener::process(unsigned int *result, int a2, uint64_t a3)
{
  v3 = (result + 2);
  v4 = atomic_load(result + 2);
  if (v4 <= 0x7FFFFFFE)
  {
    v7 = result;
    v8 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v8, v4 + 1);
      if (v8 == v4)
      {
        break;
      }

      v4 = v8;
      if (v8 >= 0x7FFFFFFF)
      {
        return result;
      }
    }

    v9 = (**a3)(a3);
    if (v9)
    {
      v10 = v9;
      v11 = (*(*a3 + 16))(a3);
      if (v11)
      {
        if (a2 != 1)
        {
          if (!a2 && *(v7 + 71) == 1)
          {
            v12 = v11;
            (*(*v10 + 24))(v27, v10, 1970042477);
            if (v31 == 1)
            {
              caulk::expected<float,vp::vx::io::Error>::value(v27);
              v13.n128_u32[0] = v27[0];
              v14 = *v27 == 1.0;
              if (v31)
              {
LABEL_31:
                v20 = *(v7 + 69);
                if (v20 == v14)
                {
                  v26 = 0;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499698, &v24, v13);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }
                }

                else
                {
                  v26 = v20 ^ 1;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499698, &v24, v13);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  *(v7 + 69) = v14;
                }

                if (*(v7 + 4))
                {
                  v21 = *(v7 + 69) ^ 1;
                }

                else
                {
                  v21 = 1;
                }

                v22 = *(v7 + 68);
                v23 = v21 & 1;
                if (v22 != (v21 & 1))
                {
                  v26 = v22 ^ 1;
                  v24 = &v26;
                  v25 = 4;
                  (*(*v12 + 40))(v27, v12, 1970499684, &v24);
                  if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  *(v7 + 68) = v23;
                }

                return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
              }
            }

            else
            {
              v14 = 0;
            }

            if (SHIBYTE(v29) < 0)
            {
              (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1, v13);
            }

            goto LABEL_31;
          }

          return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
        }

        (*(*v10 + 24))(v27, v10, 1970499682);
        if (v31 == 1)
        {
          caulk::expected<float,vp::vx::io::Error>::value(v27);
          v15.n128_u32[0] = v27[0];
          v16 = *v27 == 1.0;
          if (v31)
          {
LABEL_20:
            if (*(v7 + 70) == v16)
            {
              return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
            }

            (*(*v10 + 24))(v27, v10, 1970042477, v15);
            if ((v31 & 1) == 0)
            {
              if (SHIBYTE(v29) < 0)
              {
                (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              goto LABEL_43;
            }

            caulk::expected<float,vp::vx::io::Error>::value(v27);
            v17 = *v27;
            if ((v31 & 1) == 0 && SHIBYTE(v29) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (v17 != 1.0)
            {
LABEL_43:
              *(v7 + 70) = v16;
              return caulk::concurrent::shared_spin_lock::unlock_shared(v3);
            }

            result = *MEMORY[0x277D7F098];
            if (*MEMORY[0x277D7F098])
            {
              v18 = *(v7 + 2);
              v19 = caulk::rt_safe_memory_resource::rt_allocate(result);
              *(v19 + 16) = 0;
              *(v19 + 24) = v7;
              *(v19 + 32) = v16 ^ 1;
              *v19 = &unk_2881B92B0;
              *(v19 + 8) = 0;
              caulk::concurrent::messenger::enqueue(v18, v19);
              goto LABEL_43;
            }

LABEL_54:
            __break(1u);
            return result;
          }
        }

        else
        {
          v16 = 0;
        }

        if (SHIBYTE(v29) < 0)
        {
          (*(*v30 + 24))(v30, v28, v29 & 0x7FFFFFFFFFFFFFFFLL, 1, v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      _os_crash();
      __break(1u);
    }

    result = _os_crash();
    goto LABEL_54;
  }

  return result;
}

void sub_27266EB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v1 = *(a1 + 24);
  if (*(v1 + 32))
  {
    v2 = *(a1 + 32);
    if (v2 == 1)
    {
      log = vp::get_log(a1);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        vp::vx::io::get_log_context_info(&__p, v1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
        v14 = v24;
        v5 = v24;
        v15 = v23;
        v8 = vp::get_log(v16);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        if (v5 >= 0)
        {
          v17 = v14;
        }

        else
        {
          v17 = v15;
        }

        p_p = __p;
        if (v5 >= 0)
        {
          p_p = &__p;
        }

        if (v17)
        {
          v19 = " ";
        }

        else
        {
          v19 = "";
        }

        *buf = 136315394;
        v26 = p_p;
        v27 = 2080;
        v28 = v19;
        v12 = "%s%sspeech activity event ended";
LABEL_26:
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
        LOBYTE(v5) = v24;
LABEL_27:
        if ((v5 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    else if (!v2)
    {
      v3 = vp::get_log(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        vp::vx::io::get_log_context_info(&__p, v1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
        v4 = v24;
        v5 = v24;
        v6 = v23;
        v8 = vp::get_log(v7);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        if (v5 >= 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = v6;
        }

        v10 = __p;
        if (v5 >= 0)
        {
          v10 = &__p;
        }

        if (v9)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        *buf = 136315394;
        v26 = v10;
        v27 = 2080;
        v28 = v11;
        v12 = "%s%sspeech activity event started";
        goto LABEL_26;
      }
    }

    (*(*(v1 + 32) + 16))(*(v1 + 32));
  }

  return caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::rt_cleanup::~rt_cleanup(&v21);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<vp::vx::IO_Speech_Activity_Event_Listener::process(vp::vx::io::Moment,vp::vx::io::Node &)::$_0,AUVoiceIOSpeechActivityEvent>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Speech_Activity_Event_Listener::notify(uint64_t a1, int a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 40), v3);
      v6[0] = 0;
      vp::vx::IO_Speech_Activity_Event_Listener::update_block(a1, v6);
      if (v6[0])
      {
        _Block_release(v6[0]);
      }

      *(a1 + 64) = 0;
    }
  }

  else if (!a2 && !*(a1 + 64))
  {
    v4[0] = &unk_2881B9320;
    v4[1] = a1;
    v4[3] = v4;
    std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__value_func[abi:ne200100](v5, v4);
    v6[3] = 0;
    operator new();
  }
}

void sub_27266EF9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::IO_Speech_Activity_Event_Listener::update_block(uint64_t a1, const void **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  v21 = a1 + 8;
  v22 = 1;
  v5 = caulk::concurrent::shared_spin_lock::lock((a1 + 8));
  v6 = (a1 + 32);
  if (*(a1 + 32))
  {
    v5 = caulk::concurrent::messenger::drain(*(a1 + 16));
  }

  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, a1 + 72, "vp::vx::IO_Speech_Activity_Event_Listener]", 41);
    v8 = v20;
    v9 = v20;
    v10 = __p[1];
    v12 = vp::get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = __p[0];
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v16 = *a2;
      *buf = 136315650;
      v24 = v14;
      v25 = 2080;
      v26 = v15;
      if (v16)
      {
        v17 = "added";
      }

      else
      {
        v17 = "removed";
      }

      v27 = 2080;
      v28 = v17;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%s%s speech activity event listener block", buf, 0x20u);
      LOBYTE(v9) = v20;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(v6);
  v18 = *a2;
  *a2 = 0;
  *v6 = v18;
  caulk::concurrent::shared_spin_lock::unlock(v4);
}

void sub_27266F14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x27266F114);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    caulk::concurrent::shared_spin_lock::unlock(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::destroy_value(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    _Block_release(*a2);
    *a2 = 0;
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::move_value(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a2 = v3;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::copy_value(uint64_t a1, void *a2, void **a3)
{
  result = *a3;
  if (*a3)
  {
    result = _Block_copy(result);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B92D8;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B92D8;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0>,void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 8);
  aBlock = v3;
  vp::vx::IO_Speech_Activity_Event_Listener::update_block(v4, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener::register_event_listener_block_listener(void)::$_0>,void ()(vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B9320;
  a2[1] = v2;
  return result;
}

uint64_t *vp::vx::IO_Speech_Activity_Event_Listener::get_property_ids@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2 || *(result + 71) != 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = 0x7573707275737064;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &v4, 2uLL);
  }

  return result;
}

void sub_27266F7C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *vp::vx::IO_Speech_Activity_Event_Listener::get_parameter_ids@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = 0x75737062756C766DLL;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_27266F85C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::IO_Speech_Activity_Event_Listener_Factory::~IO_Speech_Activity_Event_Listener_Factory(vp::vx::IO_Speech_Activity_Event_Listener_Factory *this)
{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 16);
  vp::vx::data_flow::State<void>::~State(v1 + 10);
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 16);
  vp::vx::data_flow::State<void>::~State(v1 + 10);
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(v1 + 11) = &unk_2881C6630;
  v4 = *(v1 + 13);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::IO_Speech_Activity_Event_Listener_Factory::~IO_Speech_Activity_Event_Listener_Factory(vp::vx::IO_Speech_Activity_Event_Listener_Factory *this)
{
  vp::vx::data_flow::State<void>::~State(this + 16);
  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(this + 11) = &unk_2881C6630;
  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::data_flow::State<void>::~State(this + 16);
  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(this + 11) = &unk_2881C6630;
  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

std::pmr *vp::vx::IO_Speech_Activity_Event_Listener_Factory::new_node_delegate(int *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    v9 = result;
    result = (**result)(result, 1970042477);
    if (result)
    {
      result = (*(*v9 + 8))(v9, 1970499682, 1);
      if (result)
      {
        if (*(a1 + 9))
        {
          *&v14 = 0;
          default_resource = std::pmr::get_default_resource(result);
          vp::vx::data_flow::State<void>::get_value(a1 + 16, &default_resource);
          vp::vx::data_flow::Value::view_storage(&default_resource);
          vp::vx::data_flow::Value::~Value(&default_resource);
        }

        result = (*(*a2 + 24))(a2);
        if (result)
        {
          v10 = result;
          (*(*result + 8))(result, 1970499684, 0);
          (*(*v10 + 8))(v10, 1970499698, 0);
          *&default_resource = 0;
          *(&default_resource + 1) = a3;
          v14 = xmmword_2727565F0;
          *((*(*a3 + 16))(a3, 96, 8) + 72) = &unk_2881C6630;
          operator new();
        }
      }
    }
  }

  return result;
}

void sub_27266FF18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_27266FF48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x27266FF50);
  }

  _Unwind_Resume(a1);
}

caulk::concurrent::messenger ***std::unique_ptr<vp::vx::IO_Speech_Activity_Event_Listener,vp::Allocator_Delete<vp::vx::IO_Speech_Activity_Event_Listener>>::reset[abi:ne200100](caulk::concurrent::messenger ***result, caulk::concurrent::messenger **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Speech_Activity_Event_Listener::~IO_Speech_Activity_Event_Listener(v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = "should not be";
        if (v6)
        {
          v11 = "should be";
        }

        caulk::make_string(&v12, "speech activity detection %s disabled and reset on unmute", v8, v11);
        __p = v12;
        memset(&v12, 0, sizeof(v12));
        v14 = 1;
        (*(*v10 + 24))(v10, v5, &__p);
        if (v14 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9368;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9368;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Speech_Activity_Event_Listener_Factory::set_should_disable_and_reset_on_unmute(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9368;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Wire_Factory::~IO_Wire_Factory(vp::vx::IO_Wire_Factory *this)
{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Wire_Factory::~IO_Wire_Factory(vp::vx::IO_Wire_Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B93B8;
  *(this + 13) = &unk_2881B93E8;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 20);
  vp::vx::data_flow::State<void>::~State(this + 14);
  vp::vx::data_flow::State<void>::~State(this + 8);
  v11 = *(this + 3);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 13) = &unk_2881C6630;
  v12 = *(this + 15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Wire_Factory::~IO_Wire_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2726707CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726707A4);
}

char *vp::detail::reflect_value_name<(vp::Domain)0,128ul>(int a1)
{
  result = "vp::Domain::Uplink]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::Domain::Downlink]";
      break;
    case 2:
      result = "(vp::Domain)2]";
      break;
    case 3:
      result = "(vp::Domain)3]";
      break;
    case 4:
      result = "(vp::Domain)4]";
      break;
    case 5:
      result = "(vp::Domain)5]";
      break;
    case 6:
      result = "(vp::Domain)6]";
      break;
    case 7:
      result = "(vp::Domain)7]";
      break;
    case 8:
      result = "(vp::Domain)8]";
      break;
    case 9:
      result = "(vp::Domain)9]";
      break;
    case 10:
      result = "(vp::Domain)10]";
      break;
    case 11:
      result = "(vp::Domain)11]";
      break;
    case 12:
      result = "(vp::Domain)12]";
      break;
    case 13:
      result = "(vp::Domain)13]";
      break;
    case 14:
      result = "(vp::Domain)14]";
      break;
    case 15:
      result = "(vp::Domain)15]";
      break;
    case 16:
      result = "(vp::Domain)16]";
      break;
    case 17:
      result = "(vp::Domain)17]";
      break;
    case 18:
      result = "(vp::Domain)18]";
      break;
    case 19:
      result = "(vp::Domain)19]";
      break;
    case 20:
      result = "(vp::Domain)20]";
      break;
    case 21:
      result = "(vp::Domain)21]";
      break;
    case 22:
      result = "(vp::Domain)22]";
      break;
    case 23:
      result = "(vp::Domain)23]";
      break;
    case 24:
      result = "(vp::Domain)24]";
      break;
    case 25:
      result = "(vp::Domain)25]";
      break;
    case 26:
      result = "(vp::Domain)26]";
      break;
    case 27:
      result = "(vp::Domain)27]";
      break;
    case 28:
      result = "(vp::Domain)28]";
      break;
    case 29:
      result = "(vp::Domain)29]";
      break;
    case 30:
      result = "(vp::Domain)30]";
      break;
    case 31:
      result = "(vp::Domain)31]";
      break;
    case 32:
      result = "(vp::Domain)32]";
      break;
    case 33:
      result = "(vp::Domain)33]";
      break;
    case 34:
      result = "(vp::Domain)34]";
      break;
    case 35:
      result = "(vp::Domain)35]";
      break;
    case 36:
      result = "(vp::Domain)36]";
      break;
    case 37:
      result = "(vp::Domain)37]";
      break;
    case 38:
      result = "(vp::Domain)38]";
      break;
    case 39:
      result = "(vp::Domain)39]";
      break;
    case 40:
      result = "(vp::Domain)40]";
      break;
    case 41:
      result = "(vp::Domain)41]";
      break;
    case 42:
      result = "(vp::Domain)42]";
      break;
    case 43:
      result = "(vp::Domain)43]";
      break;
    case 44:
      result = "(vp::Domain)44]";
      break;
    case 45:
      result = "(vp::Domain)45]";
      break;
    case 46:
      result = "(vp::Domain)46]";
      break;
    case 47:
      result = "(vp::Domain)47]";
      break;
    case 48:
      result = "(vp::Domain)48]";
      break;
    case 49:
      result = "(vp::Domain)49]";
      break;
    case 50:
      result = "(vp::Domain)50]";
      break;
    case 51:
      result = "(vp::Domain)51]";
      break;
    case 52:
      result = "(vp::Domain)52]";
      break;
    case 53:
      result = "(vp::Domain)53]";
      break;
    case 54:
      result = "(vp::Domain)54]";
      break;
    case 55:
      result = "(vp::Domain)55]";
      break;
    case 56:
      result = "(vp::Domain)56]";
      break;
    case 57:
      result = "(vp::Domain)57]";
      break;
    case 58:
      result = "(vp::Domain)58]";
      break;
    case 59:
      result = "(vp::Domain)59]";
      break;
    case 60:
      result = "(vp::Domain)60]";
      break;
    case 61:
      result = "(vp::Domain)61]";
      break;
    case 62:
      result = "(vp::Domain)62]";
      break;
    case 63:
      result = "(vp::Domain)63]";
      break;
    case 64:
      result = "(vp::Domain)64]";
      break;
    case 65:
      result = "(vp::Domain)65]";
      break;
    case 66:
      result = "(vp::Domain)66]";
      break;
    case 67:
      result = "(vp::Domain)67]";
      break;
    case 68:
      result = "(vp::Domain)68]";
      break;
    case 69:
      result = "(vp::Domain)69]";
      break;
    case 70:
      result = "(vp::Domain)70]";
      break;
    case 71:
      result = "(vp::Domain)71]";
      break;
    case 72:
      result = "(vp::Domain)72]";
      break;
    case 73:
      result = "(vp::Domain)73]";
      break;
    case 74:
      result = "(vp::Domain)74]";
      break;
    case 75:
      result = "(vp::Domain)75]";
      break;
    case 76:
      result = "(vp::Domain)76]";
      break;
    case 77:
      result = "(vp::Domain)77]";
      break;
    case 78:
      result = "(vp::Domain)78]";
      break;
    case 79:
      result = "(vp::Domain)79]";
      break;
    case 80:
      result = "(vp::Domain)80]";
      break;
    case 81:
      result = "(vp::Domain)81]";
      break;
    case 82:
      result = "(vp::Domain)82]";
      break;
    case 83:
      result = "(vp::Domain)83]";
      break;
    case 84:
      result = "(vp::Domain)84]";
      break;
    case 85:
      result = "(vp::Domain)85]";
      break;
    case 86:
      result = "(vp::Domain)86]";
      break;
    case 87:
      result = "(vp::Domain)87]";
      break;
    case 88:
      result = "(vp::Domain)88]";
      break;
    case 89:
      result = "(vp::Domain)89]";
      break;
    case 90:
      result = "(vp::Domain)90]";
      break;
    case 91:
      result = "(vp::Domain)91]";
      break;
    case 92:
      result = "(vp::Domain)92]";
      break;
    case 93:
      result = "(vp::Domain)93]";
      break;
    case 94:
      result = "(vp::Domain)94]";
      break;
    case 95:
      result = "(vp::Domain)95]";
      break;
    case 96:
      result = "(vp::Domain)96]";
      break;
    case 97:
      result = "(vp::Domain)97]";
      break;
    case 98:
      result = "(vp::Domain)98]";
      break;
    case 99:
      result = "(vp::Domain)99]";
      break;
    case 100:
      result = "(vp::Domain)100]";
      break;
    case 101:
      result = "(vp::Domain)101]";
      break;
    case 102:
      result = "(vp::Domain)102]";
      break;
    case 103:
      result = "(vp::Domain)103]";
      break;
    case 104:
      result = "(vp::Domain)104]";
      break;
    case 105:
      result = "(vp::Domain)105]";
      break;
    case 106:
      result = "(vp::Domain)106]";
      break;
    case 107:
      result = "(vp::Domain)107]";
      break;
    case 108:
      result = "(vp::Domain)108]";
      break;
    case 109:
      result = "(vp::Domain)109]";
      break;
    case 110:
      result = "(vp::Domain)110]";
      break;
    case 111:
      result = "(vp::Domain)111]";
      break;
    case 112:
      result = "(vp::Domain)112]";
      break;
    case 113:
      result = "(vp::Domain)113]";
      break;
    case 114:
      result = "(vp::Domain)114]";
      break;
    case 115:
      result = "(vp::Domain)115]";
      break;
    case 116:
      result = "(vp::Domain)116]";
      break;
    case 117:
      result = "(vp::Domain)117]";
      break;
    case 118:
      result = "(vp::Domain)118]";
      break;
    case 119:
      result = "(vp::Domain)119]";
      break;
    case 120:
      result = "(vp::Domain)120]";
      break;
    case 121:
      result = "(vp::Domain)121]";
      break;
    case 122:
      result = "(vp::Domain)122]";
      break;
    case 123:
      result = "(vp::Domain)123]";
      break;
    case 124:
      result = "(vp::Domain)124]";
      break;
    case 125:
      result = "(vp::Domain)125]";
      break;
    case 126:
      result = "(vp::Domain)126]";
      break;
    case 127:
      result = "(vp::Domain)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::Domain)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::IO_Wire_Factory::new_wire(vp *a1@<X0>, CA::Implementation *a2@<X2>, AudioStreamBasicDescription *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = a1;
  v36 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  v22 = v8;
  if (v11)
  {
    log_context_info = vp::vx::get_log_context_info(__p, v8);
    v13 = v35;
    v14 = v35;
    v15 = __p[1];
    v16 = vp::get_log(log_context_info);
    v11 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v14 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      v18 = __p[0];
      if (v14 >= 0)
      {
        v18 = __p;
      }

      if (v17)
      {
        v19 = " ";
      }

      else
      {
        v19 = "";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v32 = 2080;
      v33 = v19;
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEBUG, "%s%swill create wire", buf, 0x16u);
      LOBYTE(v14) = v35;
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    v8 = v22;
  }

  *a5 = 0;
  default_resource = std::pmr::get_default_resource(v11);
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = default_resource;
  if (*a2 == a3->mSampleRate && *(a2 + 2) == a3->mFormatID && *(a2 + 4) == a3->mBytesPerPacket && *(a2 + 5) == a3->mFramesPerPacket && *(a2 + 7) == a3->mChannelsPerFrame && *(a2 + 8) == a3->mBitsPerChannel && CA::Implementation::EquivalentFormatFlags(a2, a3, v21))
  {
    *buf = vp::vx::IO_Wire_Factory::get_storage_capacity(v8);
    vp::allocate_unique<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(__p, a4, a2, buf);
  }

  vp::vx::IO_Wire_Factory::get_storage_capacity(v8);
  v26 = a4;
  v23 = 0;
  v24 = a4;
  v25 = xmmword_272756750;
  v27 = (*(*a4 + 16))(a4, 464, 8);
  v28 = &v27;
  v29 = &v26;
  v30 = 0;
  *(v27 + 440) = &unk_2881C6630;
  operator new();
}

void sub_272671D88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::IO_Wire_Factory::get_storage_capacity(vp::vx::IO_Wire_Factory *this)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = std::pmr::get_default_resource(this);
  vp::vx::data_flow::State<void>::get_value(this + 20, v4);
  v2 = *vp::vx::data_flow::Value::view_storage(v4);
  vp::vx::data_flow::Value::~Value(v4);
  return v2;
}

void sub_272671F44(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  __clang_call_terminate(a1);
}

void vp::allocate_unique<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v4[0] = a2;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_272756760;
  v6 = (*(*a2 + 16))(a2, 344, 8);
  v4[1] = &v6;
  v4[2] = v4;
  v5 = 0;
  *(v6 + 320) = &unk_2881C6630;
  operator new();
}

void sub_2726723C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Pass_Through_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Pass_Through_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](va);
  std::unique_ptr<vp::vx::io::wires::Audio_Pass_Through_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Pass_Through_Wire>>::reset[abi:ne200100](v3, 0);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::io::wires::Audio_Pass_Through_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Pass_Through_Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

__n128 vp::Expected<void,vp::vx::io::Error>::on_error<vp::vx::IO_Wire_Factory::new_wire(vp::vx::io::Model,CA::StreamDescription const&,CA::StreamDescription const&,vp::Allocator<std::byte>)::$_0 &>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 48) & 1) == 0)
  {
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      v8 = __p;
      log_context_info = vp::vx::get_log_context_info(__p, a3);
      v10 = v24;
      LODWORD(v11) = v24;
      v12 = __p[1];
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        if (v11 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v12;
        }

        if (v11 < 0)
        {
          v8 = __p[0];
        }

        if (v15)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        v16 = *(a2 + 4);
        v17 = *(a2 + 6);
        log_source_file_path = vp::get_log_source_file_path(*(a2 + 8), v14);
        v19 = a2 + 16;
        if (*(a2 + 39) < 0)
        {
          v19 = *(a2 + 16);
        }

        *buf = 136316418;
        v26 = v8;
        v27 = 2080;
        v28 = v11;
        v29 = 1024;
        v30 = v16;
        v31 = 1024;
        v32 = v17;
        v33 = 2080;
        v34 = log_source_file_path;
        v35 = 2080;
        v36 = v19;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_FAULT, "%s%sunexpected error at line %u column %u in %s - %s", buf, 0x36u);
        LOBYTE(v11) = v24;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  a1->n128_u8[0] = 0;
  v20 = *(a2 + 48);
  a1[3].n128_u8[0] = v20;
  if ((v20 & 1) == 0)
  {
    v21 = *(a2 + 4);
    a1->n128_u32[0] = *a2;
    a1->n128_u32[1] = v21;
    a1->n128_u64[1] = *(a2 + 8);
    result = *(a2 + 16);
    a1[1] = result;
    v22 = *(a2 + 40);
    a1[2].n128_u64[0] = *(a2 + 32);
    a1[2].n128_u64[1] = v22;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

void *std::unique_ptr<vp::vx::io::wires::Audio_Converter_Wire,vp::Allocator_Delete<vp::vx::io::wires::Audio_Converter_Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Converter_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Converter_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Converter_Wire,CA::StreamDescription const&,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 464, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::wires::Audio_Pass_Through_Wire * std::pmr::polymorphic_allocator<vp::vx::io::wires::Audio_Pass_Through_Wire>::new_object[abi:ne200100]<vp::vx::io::wires::Audio_Pass_Through_Wire,CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>>>(CA::StreamDescription const&,std::chrono::duration<long long,std::ratio<1l,1000l>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 344, 8);
  }

  return a1;
}

void sub_2726729F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire sample rate conversion algorithm is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 32))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9498;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9498;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9498;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire sample rate conversion algorithm is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9450;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9450;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9450;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire sample rate conversion quality is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 32))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9528;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9528;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9528;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire sample rate conversion quality is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B94E0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B94E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Wire_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B94E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire storage capacity is %lld milliseconds", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 32))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B9600;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9600;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_downlink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9600;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "I/O wire storage capacity is %lld milliseconds", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B95B8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B95B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Wire_Factory::set_storage_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B95B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(vp::vx::IO_Wireless_Charging_Detector_Delegate *this)
{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(vp::vx::IO_Wireless_Charging_Detector_Delegate *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 4) = &unk_2881C6630;
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void *vp::vx::IO_Wireless_Charging_Detector_Delegate::process(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    if (!a2)
    {
      v6 = result;
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (*(a1 + 8) != result)
      {
        v7 = result;
        result = (*(*v6 + 32))(v8, v6, 2003004769, result);
        if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
        {
          result = (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        *(a1 + 8) = v7;
      }
    }
  }

  else
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

const vp::vx::io::Error *vp::vx::IO_Wireless_Charging_Detector_Delegate::notify(uint64_t a1, int a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (!result)
  {
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    result = (*(*result + 24))(v8);
    if (v11 == 1)
    {
      result = caulk::expected<float,vp::vx::io::Error>::value(v8);
      v6.n128_u32[0] = v8[0];
      v7 = v11;
      *(a1 + 8) = *v8 == 1.0;
      if (v7)
      {
        return result;
      }
    }

    else
    {
      *(a1 + 8) = 0;
    }

    if (SHIBYTE(v9) < 0)
    {
      return (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v6);
    }
  }

  return result;
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *vp::vx::IO_Wireless_Charging_Detector_Delegate::get_parameter_ids@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 2003004769;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::~IO_Wireless_Charging_Detector_Delegate_Factory(vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v1[3] = &unk_2881C6630;
  v3 = v1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::~IO_Wireless_Charging_Detector_Delegate_Factory(vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 3) = &unk_2881C6630;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t vp::vx::IO_Wireless_Charging_Detector_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    result = (*(*result + 8))(result, 2003004769, 0);
    if (result)
    {
      v8 = (*(*a3 + 16))(a3, 56, 8);
      v9 = *(a1 + 8);
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *(v8 + 32) = &unk_2881C6630;
      operator new();
    }
  }

  return result;
}

vp::vx::IO_Wireless_Charging_Detector_Delegate **std::unique_ptr<vp::vx::IO_Wireless_Charging_Detector_Delegate,vp::Allocator_Delete<vp::vx::IO_Wireless_Charging_Detector_Delegate>>::reset[abi:ne200100](vp::vx::IO_Wireless_Charging_Detector_Delegate **result, vp::vx::IO_Wireless_Charging_Detector_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Wireless_Charging_Detector_Delegate::~IO_Wireless_Charging_Detector_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *vp::utility::operator<<(void *a1, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a2)
{
  v18 = *MEMORY[0x277D85DE8];
  __t.__d_.__rep_ = a2;
  v8 = std::chrono::system_clock::to_time_t(&__t);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = __t.__d_.__rep_ / 1000 % 1000;
  v12 = 0u;
  v13 = 0u;
  *__s = 0u;
  v11 = 0u;
  v4 = localtime(&v8);
  v5 = strftime(__s, 0x80uLL, "%Y-%m-%dT%H:%M:%S.", v4);
  snprintf(&__s[v5], 128 - v5, "%03llu", v3);
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  return a1;
}

void sub_2726744C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);

  _Unwind_Resume(a1);
}

void sub_2726746BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(&a9);

  _Unwind_Resume(a1);
}

void sub_2726748A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

void sub_272674B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    vp::objc::ID::~ID(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_272674D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

void *vp::rpb::Item::Item(void *a1, id *a2, id *a3, uint64_t a4, id *a5, uint64_t a6)
{
  v12 = objc_alloc(MEMORY[0x277D46118]);
  v13 = *a2;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v19, a3, a4);
  v14 = v19;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v18, a5, a6);
  v15 = v18;
  v16 = [v12 initWithName:v13 inputs:v14 outputs:v15];
  *a1 = v16;

  vp::objc::ID::~ID(&v18);
  vp::objc::ID::~ID(&v19);

  return a1;
}

void sub_272674F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  vp::objc::ID::~ID(&a9);
  vp::objc::ID::~ID(va);

  _Unwind_Resume(a1);
}

void vp::rpb::Item::get_parameter_info(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v7[4];
  if (!v8)
  {

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = std::pmr::get_default_resource(v9);
    *(a1 + 32) = 1;
    return;
  }

  v10 = v7;
  std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(a1, v8, a3);
}

void vp::rpb::Item::get_property_info(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v7[16];
  if (!v8)
  {

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = std::pmr::get_default_resource(v9);
    *(a1 + 32) = 1;
    return;
  }

  v10 = v7;
  std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(a1, v8, a3);
}

void vp::rpb::Item::get_inputs(vp::rpb::Item *this, void *a2)
{
  v4 = a2;
  v3 = [v4 inputs];
  *this = v3;
}

void vp::rpb::Item::get_sub_host(vp::rpb::Item *this, void *a2)
{
  v4 = a2;
  v3 = [v4 subHost];
  *this = v3;
}

void **vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser::parse_decision@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t *a3@<X1>)
{
  v10 = 0;
  vp::xml::Node::children(v14, a3);
  v16[0] = v14;
  v16[1] = 0;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v12, v16, v5);
  if (v12)
  {
    v6 = *(a1 + 8);
    v7 = vp::xml::Node::content(v12, v13);
    vp::vx::database::v1::runtime::String_Pool::intern(&cf, v6, v7, v8);
    operator new();
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v18 == 1 && v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v10 = 0;
  *a2 = 0;
  return std::unique_ptr<vp::vx::database::v1::syntax::decisions::Load_Configuration>::reset[abi:ne200100](&v10, 0);
}

void sub_272675490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  applesauce::CF::StringRef::~StringRef(&a10);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a20 == 1 && a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272675444);
}

void **std::unique_ptr<vp::vx::database::v1::syntax::decisions::Load_Configuration>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_2881B97A8;
    v3 = v2[5];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void vp::vx::database::v1::syntax::decisions::Load_Configuration::~Load_Configuration(vp::vx::database::v1::syntax::decisions::Load_Configuration *this)
{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser::~Parser(vp::vx::database::v1::syntax::decisions::Load_Configuration::Parser *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL vp::vx::database::v1::syntax::decisions::Load_Property_List::evaluate(vp::vx::database::v1::syntax::decisions::Load_Property_List *this, const vp::vx::database::v1::Request *a2, CFPropertyListRef *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 4);
  if (v5)
  {
    Length = CFStringGetLength(v5);
    v7 = Length;
    if (Length)
    {
      MEMORY[0x28223BE20](Length);
      bzero(&v16 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), (v7 + 1));
      if (CFStringGetCString(*(this + 4), &v16 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), (v7 + 1), 0x8000100u))
      {
        v7 = &v16 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 3);
  if (v8)
  {
    v9 = CFStringGetLength(v8);
    v10 = v9;
    if (v9)
    {
      MEMORY[0x28223BE20](v9);
      bzero(&v16 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0), (v10 + 1));
      if (CFStringGetCString(*(this + 3), &v16 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0), (v10 + 1), 0x8000100u))
      {
        v10 = &v16 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 5);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v12 = *(this + 2);
  applesauce::CF::convert_to<std::string,0>(&v17, v11);
  v19 = v17;
  v20 = v18;
  v18 = 0;
  v17 = 0uLL;
  (*(*v12 + 16))(v21, v12, &v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  v13 = v21[0];
  if (!v21[0])
  {
    return 0;
  }

  CFRetain(v21[0]);
  vp::vx::database::v1::Response::set(a3, v7, v13, v10);
  CFRelease(v13);
  result = v21[0] != 0;
  if (v21[0])
  {
    CFRelease(v21[0]);
    return 1;
  }

  return result;
}

void sub_272675954(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t vp::vx::database::v1::syntax::decisions::Load_Property_List::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this + 3, a3);
  v7 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 4, v6);
  v9 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 5, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v10 = v9;
  *(a2 + 70) = 1;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  v13 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v11 - v12 + v13);
  LODWORD(v4) = *(v4 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v18 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 2);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v16 - v17 + v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v19);
  return v19;
}

void vp::vx::database::v1::syntax::decisions::Load_Property_List::~Load_Property_List(vp::vx::database::v1::syntax::decisions::Load_Property_List *this)
{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B97A8;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::database::v1::syntax::decisions::Load_Property_List::Parser::parse_decision(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t *a3@<X1>)
{
  vp::xml::Node::children(v42, a3);
  v44[0] = v42;
  v44[1] = 0;
  v45 = 0;
  v46 = 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v40, v44, v4);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (v40)
  {
    v8 = vp::xml::Node::name(v40, v41);
    v11 = vp::vx::database::v1::syntax::constexpr_hash(v8, v9, v10);
    if (v11 == 0x539572566EA6738FLL)
    {
      if (v6)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v29, &v40);
      v36 = v29;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v32, &v36, v22);
      while (v32)
      {
        v23 = *(a1 + 8);
        v24 = vp::xml::Node::content(v32, v33);
        vp::vx::database::v1::runtime::String_Pool::intern(&v31, v23, v24, v25);
        v6 = v31;
        if (v31)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v32, v12);
      }

      v6 = 0;
    }

    else if (v11 == 0x56F98C19446556ACLL)
    {
      if (v5)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v27, &v40);
      v36 = v27;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v32, &v36, v18);
      while (v32)
      {
        v19 = *(a1 + 8);
        v20 = vp::xml::Node::content(v32, v33);
        vp::vx::database::v1::runtime::String_Pool::intern(&v31, v19, v20, v21);
        v5 = v31;
        if (v31)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v32, v12);
      }

      v5 = 0;
    }

    else
    {
      if (v11 != 0x69F7D38018125979 || v7 != 0)
      {
        goto LABEL_40;
      }

      vp::xml::Node::children(v34, &v40);
      v36 = v34;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v32, &v36, v14);
      while (v32)
      {
        v15 = *(a1 + 8);
        v16 = vp::xml::Node::content(v32, v33);
        vp::vx::database::v1::runtime::String_Pool::intern(&v31, v15, v16, v17);
        v7 = v31;
        if (v31)
        {
          goto LABEL_35;
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v32, v12);
      }

      v7 = 0;
    }

LABEL_35:
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v39 == 1)
    {
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }
    }

LABEL_40:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v40, v12);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v46 == 1 && v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v7)
  {
    operator new();
  }

  *a2 = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](uint64_t **a1, uint64_t **a2, __n128 a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[1];
    v6 = a2[2];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = (*a2)[1];
  v11 = **a2;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = 0;
  v10[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(v9, &v11, v10, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(a2 + 24) == 1)
  {
    v8 = a2[2];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v5 = v9[0];
  v6 = v9[1];
  a2[1] = v9[0];
  a2[2] = v6;
  *(a2 + 24) = 1;
  if (v6)
  {
LABEL_12:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_13:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = a2;
}

std::__shared_weak_count **std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](std::__shared_weak_count **a1, __n128 a2)
{
  vp::xml::Node_Iterator::increment(a1, a2);
  v3 = *a1;
  *a1 = 0;
  a1[1] = 0;
  v8 = v3;
  v7[0] = 0;
  v7[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(&v6, &v8, v7, v3);
  if (v8.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8.n128_u64[1]);
  }

  v4 = a1[1];
  *a1 = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::element_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(void *a1, vp::xml::Node_Iterator *a2, void *a3, __n128 a4)
{
  v6 = *a2;
  if (*a2 != *a3)
  {
    while (1)
    {
      v8 = *(a2 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v6 + 8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v6 + 8);
      }

      if (v9 == 1)
      {
        break;
      }

      a4.n128_f64[0] = vp::xml::Node_Iterator::increment(a2, a4);
      v6 = *a2;
      if (*a2 == *a3)
      {
        goto LABEL_9;
      }
    }

    v6 = *a2;
  }

LABEL_9:
  v10 = *(a2 + 1);
  *a1 = v6;
  a1[1] = v10;
  *a2 = 0;
  *(a2 + 1) = 0;
}

uint64_t vp::get_log(vp *this)
{
  v1 = &unk_28133C000;
  {
    v1 = &unk_28133C000;
    if (v3)
    {
      vp::get_log(void)::g_os_log = os_log_create("com.apple.coreaudio", "VoiceProcessor");
      v1 = &unk_28133C000;
    }
  }

  return v1[22];
}

uint64_t vp::get_log_context_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a3, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v8 = MEMORY[0x2743CBAF0](&v17, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v10 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v10 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_14;
    }

    locale = v19[1].__locale_;
    v10 = v19[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v10 - locale;
  if (v9)
  {
    memmove(&v14, locale, v9);
  }

LABEL_14:
  *(&v14 + v9) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  v16[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v12;
  v18 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

void sub_27267644C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272676428);
}

void vp::get_log_exception_info(vp *this)
{
  *this = 0;
  *(this + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this);
  std::current_exception();
  v2.__ptr_ = &v3;
  std::rethrow_exception(v2);
  __break(1u);
}

void sub_2726764D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::exception_ptr::~exception_ptr(&v40);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    operator new();
  }

  v38 = 0;
  v39 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  v32 = *v31;
  *v31 = 0;
  v38 = v32;
  v33 = *(v31 + 1);
  *(v31 + 1) = 0;
  v39 = v33;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v38);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v39, v32);
  v36 = 0;
  v37 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "message");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  LODWORD(v31) = *v34;
  *v34 = 0;
  v36 = v31;
  v35 = *(v34 + 1);
  *(v34 + 1) = 0;
  v37 = v35;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v36);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v37, v31);
  __cxa_end_catch();
}

uint64_t vp::get_log_source_file_path(vp *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 3)
  {
    v4 = this + v3;
    v5 = this;
    do
    {
      v6 = memchr(v5, 118, v3 - 2);
      if (!v6)
      {
        break;
      }

      if (*v6 == 28790 && v6[2] == 47)
      {
        if (v6 != v4)
        {
          v8 = v6 - this;
          if (v6 - this != -1)
          {
            return this + v8;
          }
        }

        break;
      }

      v5 = (v6 + 1);
      v3 = v4 - (v6 + 1);
    }

    while (v3 >= 3);
  }

  v8 = 0;
  return this + v8;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v5 = vp::vx::database::v1::syntax::Constraint::build(this + 2, a2, a3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 4);
  if (v5)
  {
    v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v5);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v9);
  }

  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v8 - v7 + v6);
  v11 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v12 = v10;
  *(a2 + 70) = 1;
  v13 = *(a2 + 8);
  v14 = *(a2 + 12);
  v15 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v11);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 6);
  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v13 - v14 + v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v16);
  return v16;
}

void vp::vx::database::v1::syntax::conditions::Match::~Match(vp::vx::database::v1::syntax::conditions::Match *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t vp::vx::database::v1::syntax::Constraint::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *(a1 + 16) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::visit(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v2)
  {
    v6 = v3 + 32 * v2;
    do
    {
      if (!v3)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      result = (*(*a2 + 16))(a2, v3 + 8);
      v3 += 32;
    }

    while (v3 != v6);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::evaluate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (!v2)
  {
    return 1;
  }

  v6 = v3 + 32 * v2;
  do
  {
    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    result = (*(**a2 + 24))(*a2, v3 + 8);
    v3 += 32;
    if (result)
    {
      v8 = v3 == v6;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_All::build(vp::vx::database::v1::syntax::conditions::Match_All *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v27;
  default_resource = std::pmr::get_default_resource(this);
  v25 = v27;
  v26 = xmmword_2727566A0;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v7)
  {
    v9 = v6 + 32 * v7;
    do
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v6 + 8;
      v11 = vp::vx::database::v1::syntax::Constraint::build((v6 + 8), a2, v5);
      v23 = v11;
      v12 = v26;
      v5 = (v25 + 4 * v26);
      if (v26 == *(&v26 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(&v28, &default_resource, v5, &v23);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(v28);
      }

      else
      {
        *v5 = v11;
        *&v26 = v12 + 1;
      }

      v6 = v10 + 24;
    }

    while (v10 + 24 != v9);
    v4 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(a2, v4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v18 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(a2, v15);
  LODWORD(v16) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v17 + v16);
  v19 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v20 = v16;
  *(a2 + 70) = 1;
  LODWORD(v17) = *(a2 + 8);
  LODWORD(v18) = *(a2 + 12);
  LODWORD(v16) = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 3);
  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v17 - v18 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v21);
  if (*(&v26 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(&default_resource, v25);
  }

  return v21;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 4, v3);
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::conditions::Match_All::~Match_All(vp::vx::database::v1::syntax::conditions::Match_All *this)
{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);
}

void *boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        CFRelease(v5);
      }

      if (*v3)
      {
        CFRelease(*v3);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  v6 = a1[3];
  if (v6)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v6, 8);
  }

  return a1;
}

void vp::vx::database::v1::syntax::conditions::Match_All::add_constraint(vp::vx::database::v1::syntax::conditions::Match_All *this, const void **a2)
{
  vp::vx::database::v1::syntax::Constraint::get_key(&v7, *a2);
  v8 = v7;
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v9 = v4;
  v10 = *(a2 + 2);
  v5 = a2[2];
  if (v5)
  {
    CFRetain(v5);
  }

  cf = v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(&v6, this + 16, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(__int128 **a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  *cf = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = *(a3 + 16);
  v26 = *(a3 + 24);
  *(a3 + 24) = 0;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (!v5 && v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v6)
  {
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf[0], (v5 + 32 * (v6 >> 1))) > kCFCompareGreaterThan)
      {
        v6 >>= 1;
      }

      else
      {
        v5 += 32 * (v6 >> 1) + 32;
        v6 += ~(v6 >> 1);
      }
    }

    while (v6);
    v7 = *(a2 + 1);
    *a1 = v5;
    if (v7 > v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a1 = v5;
    v7 = v5;
  }

  v11 = *(a2 + 2);
  if (!v7 && v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = v7 + 32 * v11;
  if (v5 > v12)
  {
LABEL_12:
    v8 = "this->priv_in_range_or_end(position)";
    v9 = 1862;
    v10 = "emplace";
    goto LABEL_37;
  }

  v13 = *(a2 + 3);
  if (v13 < v11)
  {
    v8 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v9 = 2821;
    v10 = "priv_insert_forward_range";
LABEL_37:
    __assert_rtn(v10, "vector.hpp", v9, v8);
  }

  if (v13 == v11)
  {
    boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>(&v23, a2, v5, cf);
    v5 = v23;
    v21 = v26;
  }

  else
  {
    if (v12 == v5)
    {
      *v12 = cf[0];
      v22 = cf[1];
      *(v12 + 24) = v26;
      cf[0] = 0;
      *(v12 + 8) = v22;
      cf[1] = 0;
      *(v12 + 16) = v25;
      v26 = 0;
      *(a2 + 2) = v11 + 1;
      *a1 = v5;
      goto LABEL_27;
    }

    v14 = (v12 - 32);
    *v12 = *(v12 - 32);
    *(v12 - 24) = 0;
    *(v12 - 32) = 0;
    *(v12 + 16) = *(v12 - 16);
    *(v12 + 24) = *(v12 - 8);
    *(v12 - 8) = 0;
    *(a2 + 2) = v11 + 1;
    if (v12 - 32 != v5)
    {
      v15 = (v12 - 32);
      do
      {
        v16 = *(v15 - 4);
        v15 -= 4;
        v17 = *(v14 - 3);
        *(v14 - 3) = v14[1];
        *(v14 + 4) = *(v14 - 4);
        v18 = v14[3];
        v19 = *v14;
        v14[3] = *(v14 - 1);
        *v14 = v16;
        v14[1] = v17;
        *(v14 - 1) = v18;
        v14 = v15;
        *v15 = v19;
      }

      while (v15 != v5);
    }

    v20 = *v5;
    *v5 = cf[0];
    *(v5 + 8) = cf[1];
    *cf = v20;
    *(v5 + 16) = v25;
    v21 = *(v5 + 24);
    *(v5 + 24) = v26;
    v26 = v21;
  }

  *a1 = v5;
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_27:
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void sub_2726778C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *boost::container::dtl::value_destructor<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*v2)
  {
    CFRelease(*v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_33:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v28[0] = v15;
  v28[1] = a2;
  v28[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v17 + 32 * v18;
  v20 = v15;
  if (v17 != a3)
  {
    v21 = *(a2 + 1);
    v20 = v15;
    do
    {
      *v20 = *v21;
      *v21 = 0;
      *(v20 + 8) = *(v21 + 8);
      *(v21 + 8) = 0;
      *(v20 + 16) = *(v21 + 16);
      *(v20 + 24) = *(v21 + 24);
      *(v21 + 24) = 0;
      v21 += 32;
      v20 += 32;
    }

    while (v21 != a3);
  }

  *v20 = *a4;
  *a4 = 0;
  *(v20 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(v20 + 16) = *(a4 + 16);
  *(v20 + 24) = *(a4 + 24);
  *(a4 + 24) = 0;
  if (v19 != a3)
  {
    v22 = (v20 + 56);
    v23 = a3;
    do
    {
      *(v22 - 3) = *v23;
      *v23 = 0;
      *(v22 - 2) = *(v23 + 8);
      *(v23 + 8) = 0;
      *(v22 - 2) = *(v23 + 16);
      *v22 = *(v23 + 24);
      v22 += 4;
      *(v23 + 24) = 0;
      v23 += 32;
    }

    while (v23 != v19);
  }

  v28[0] = 0;
  if (v17)
  {
    for (; v18; --v18)
    {
      v24 = *(v17 + 24);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(v17 + 8);
      if (v25)
      {
        CFRelease(v25);
      }

      if (*v17)
      {
        CFRelease(*v17);
      }

      v17 += 32;
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v26;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(v28);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_272677BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::visit(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v2)
  {
    v6 = v3 + 32 * v2;
    do
    {
      if (!v3)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      result = (*(*a2 + 16))(a2, v3 + 8);
      v3 += 32;
    }

    while (v3 != v6);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::evaluate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (!v2)
  {
    return 0;
  }

  v6 = v3 + 32 * v2;
  do
  {
    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    result = (*(**a2 + 24))(*a2, v3 + 8);
    if (result)
    {
      break;
    }

    v3 += 32;
  }

  while (v3 != v6);
  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::build(vp::vx::database::v1::syntax::conditions::Match_Any *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v27;
  default_resource = std::pmr::get_default_resource(this);
  v25 = v27;
  v26 = xmmword_2727566A0;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v7)
  {
    v9 = v6 + 32 * v7;
    do
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v6 + 8;
      v11 = vp::vx::database::v1::syntax::Constraint::build((v6 + 8), a2, v5);
      v23 = v11;
      v12 = v26;
      v5 = (v25 + 4 * v26);
      if (v26 == *(&v26 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(&v28, &default_resource, v5, &v23);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(v28);
      }

      else
      {
        *v5 = v11;
        *&v26 = v12 + 1;
      }

      v6 = v10 + 24;
    }

    while (v10 + 24 != v9);
    v4 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(a2, v4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v18 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(a2, v15);
  LODWORD(v16) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v17 + v16);
  v19 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v20 = v16;
  *(a2 + 70) = 1;
  LODWORD(v17) = *(a2 + 8);
  LODWORD(v18) = *(a2 + 12);
  LODWORD(v16) = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 4);
  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v17 - v18 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v21);
  if (*(&v26 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(&default_resource, v25);
  }

  return v21;
}

void vp::vx::database::v1::syntax::conditions::Match_Any::~Match_Any(vp::vx::database::v1::syntax::conditions::Match_Any *this)
{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);
}

void vp::vx::database::v1::syntax::conditions::Match_Any::add_constraint(vp::vx::database::v1::syntax::conditions::Match_Any *this, const void **a2)
{
  vp::vx::database::v1::syntax::Constraint::get_key(&v7, *a2);
  v8 = v7;
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v9 = v4;
  v10 = *(a2 + 2);
  v5 = a2[2];
  if (v5)
  {
    CFRetain(v5);
  }

  cf = v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(&v6, this + 16, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void vp::vx::database::v1::syntax::conditions::Match_Predicate::Parser::parse_condition(void x0_0, uint64_t *a2)
{
  v14 = 0;
  vp::xml::Node::children(v9, a2);
  v11[0] = v9;
  v11[1] = 0;
  v12 = 0;
  v13 = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v7, v11, v2);
  while (v7)
  {
    v3 = vp::xml::Node::content(v7, v8);
    vp::cf::Predicate::create(&v6, v3, v4);
    vp::objc::ID::operator=(&v14, &v6);
    vp::objc::ID::~ID(&v6);
    if (v14)
    {
      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v7, v5);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v13 == 1)
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  operator new();
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Predicate::build(id *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = this[2];
  v5 = [v4 predicateFormat];
  applesauce::CF::StringRef::from_ns(&cf, v5);

  LODWORD(v4) = vp::vx::database::v1::fbs::BuildString(a2, &cf, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v7 = v4;
  *(a2 + 70) = 1;
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v7);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v10 - v9 + v8);
  v12 = (*(a2 + 5) + *(a2 + 4) - v11);
  v13 = (v12 - *v12);
  if (*v13 < 5u || !v13[2])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v11;
  *(a2 + 70) = 1;
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v18 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 5);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v16 - v17 + v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v19);
  return v19;
}

void vp::vx::database::v1::syntax::conditions::Match_Predicate::~Match_Predicate(id *this)
{
  *this = &unk_2881B9948;
  vp::objc::ID::~ID(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B9948;
  vp::objc::ID::~ID(this + 2);
}

void vp::create_shared_messenger(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger;
  if (!vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger || (v4 = std::__shared_weak_count::lock(vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger), (a1[1] = v4) == 0) || (v5 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger, *a1 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger, !v5))
  {
    v6 = caulk::concurrent::messenger::shared_high_priority(v4);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v14, v6);
    v7 = v6[2];
    *&v16[13] = *(v6 + 45);
    *v16 = v7;
    if (v15 != 1)
    {
      operator new();
    }

    std::string::__assign_external(&v14, "com.apple.coreaudio.VoiceProcessor (messenger)");
    v17 = a2;
    v12[0] = 0;
    v12[1] = a2;
    v13 = xmmword_272756780;
    v20 = (*(*a2 + 16))(a2, 16, 8);
    v18[0] = &v20;
    v18[1] = &v17;
    v19 = 0;
    MEMORY[0x2743CB640](v20, 1, &v14);
    v19 = 1;
    v8 = v20;
    std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v18);
    std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](v12, v8);
    v11 = v12[0];
    if (v12[0])
    {
      operator new();
    }

    v12[0] = 0;
    v9 = a1[1];
    *a1 = 0uLL;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](v12, 0);
    vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger = v11;
    v10 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger;
    vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2726788F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t default_resource, uint64_t a14, uint64_t a15)
{
  std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v15 - 80);
  std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](&a12, 0);
  v17 = __cxa_begin_catch(a1);
  a12 = 0;
  default_resource = std::pmr::get_default_resource(v17);
  a14 = 0;
  a15 = 0;
  __cxa_end_catch();
  JUMPOUT(0x272678868);
}

void *std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    MEMORY[0x2743CB650](v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<caulk::concurrent::messenger *,vp::Allocator_Delete<caulk::concurrent::messenger>,std::allocator<caulk::concurrent::messenger>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x2743CB650](v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<caulk::concurrent::messenger *,vp::Allocator_Delete<caulk::concurrent::messenger>,std::allocator<caulk::concurrent::messenger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 16, 8);
  }

  return a1;
}

void virtual thunk tovp::vx::io::nodes::Mic_Ref_Sync_Node::~Mic_Ref_Sync_Node(vp::vx::io::nodes::Mic_Ref_Sync_Node *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 12, 0);
  *(v1 + 15) = &unk_2881C6630;
  v2 = *(v1 + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 12, 0);
  *(v1 + 15) = &unk_2881C6630;
  v2 = *(v1 + 17);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::~Mic_Ref_Sync_Node(vp::vx::io::nodes::Mic_Ref_Sync_Node *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 12, 0);
  *(this + 15) = &unk_2881C6630;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 12, 0);
  *(this + 15) = &unk_2881C6630;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t vp::vx::io::nodes::Mic_Ref_Sync_Node::reset@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  v3 = *(this + 104);
  if (v3)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  *(this + 112) = 0;
  *a2 = 0;
  a2[48] = 1;
  return this;
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  if (*(a1 + 88) < a6)
  {
    v57 = 0x17005100000002;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[13]>(&v51, &v57, "frame count ");
    MEMORY[0x2743CBB40](&v54, a6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " is larger than ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "maximum allowed block size", 26);
    MEMORY[0x2743CBB40](&v54, *(a1 + 88));
  }

  else if (a3 == 2)
  {
    if (a5 == 2)
    {
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v57, *a2);
      v14 = *(a2 + 8);
      if (*(v14 + 56))
      {
        v15 = *v14;
        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v49, *a4);
        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v48, *(a2 + 24));
        v16 = *(a2 + 32);
        v17 = *(v16 + 56);
        if ((v17 & 1) != 0 || *(a1 + 112) != 1)
        {
          v18 = v15;
          v19 = v15 + a6;
          v20 = *v16;
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v46, *(a4 + 24));
          vp::Audio_Ring_Buffer::write(*(a1 + 96), *a2, v18, v19);
          v21 = *(a1 + 92) & (*(a1 + 92) >> 31);
          if (vp::Audio_Ring_Buffer::read(*(a1 + 96), *a4, v18 + v21, v19 + v21))
          {
            v22 = 1;
            if ((v17 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = vp::for_each_buffer(v49, vp::fill, a6);
            if ((v17 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          vp::Audio_Ring_Buffer::write(*(a1 + 104), *(a2 + 24), v20, v20 + a6);
          v23 = *(a1 + 104);
          if (v23)
          {
            v24 = *(v23 + 72);
            v25 = *(v23 + 80);
            if (v25 > v24)
            {
              v26 = *(a1 + 92) & ~(*(a1 + 92) >> 31);
              v27 = v19 - v26;
              v28 = v18 - v26;
              if (!a6 || (v25 >= v27 ? (v29 = v24 <= v28) : (v29 = 0), v29))
              {
                if (vp::Audio_Ring_Buffer::read(v23, *(a4 + 24), v28, v27))
                {
                  *(a1 + 112) = 1;
                  if (v22)
                  {
LABEL_26:
                    v32 = *(a2 + 8);
                    v33 = *(a4 + 8);
                    v34 = *v32;
                    v35 = v32[1];
                    v36 = v32[3];
                    v33[2] = v32[2];
                    v33[3] = v36;
                    *v33 = v34;
                    v33[1] = v35;
                    v37 = *(a2 + 8);
                    v38 = *(a4 + 32);
                    v39 = *v37;
                    v40 = v37[1];
                    v41 = v37[3];
                    v38[2] = v37[2];
                    v38[3] = v41;
                    *v38 = v39;
                    v38[1] = v40;
                    *a7 = 0;
                    a7[48] = 1;
                    return;
                  }

                  goto LABEL_21;
                }
              }
            }
          }

LABEL_22:
          if (*(a1 + 112) == 1)
          {
            v31 = vp::for_each_buffer(v49, vp::fill, a6);
          }

          else
          {
            v31 = vp::for_each_buffer_pair(v49, v57, vp::copy, a6);
          }

          if (v22 & v31 & vp::for_each_buffer(v46, vp::fill, a6))
          {
            goto LABEL_26;
          }

LABEL_21:
          v51 = 0x1300DE00000000;
          v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
          v55 = 0;
          v53 = 0;
          v54 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
          vp::vx::io::operator<<<char const(&)[31]>(v45, &v51);
          v30 = v45;
          goto LABEL_35;
        }

        v51 = 0x13007D00000003;
        v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
        v55 = 0;
        v53 = 0;
        v54 = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
        vp::vx::io::operator<<<char const(&)[41]>(v47, &v51, "reference input sample time is not valid");
        v30 = v47;
      }

      else
      {
        v51 = 0x13006D00000003;
        v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
        v55 = 0;
        v53 = 0;
        v54 = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
        vp::vx::io::operator<<<char const(&)[42]>(v50, &v51);
        v30 = v50;
      }

LABEL_35:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v30);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a7, &v51);
      if (SHIBYTE(v55) < 0)
      {
        v42 = v53;
        v44 = v55;
        v43 = v56[0];
        goto LABEL_37;
      }

      return;
    }

    v57 = 0x17005F00000003;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[18]>(&v51, &v57, "output data size ");
    MEMORY[0x2743CBB50](&v54, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "expected data size ", 19);
    MEMORY[0x2743CBB30](&v54, 2);
  }

  else
  {
    v57 = 0x17005800000003;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[17]>(&v51, &v57, "input data size ");
    MEMORY[0x2743CBB50](&v54, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "expected data size ", 19);
    MEMORY[0x2743CBB30](&v54, 2);
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v51);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a7, &v57);
  if (SHIBYTE(v61) < 0)
  {
    v42 = v59;
    v44 = v61;
    v43 = v62[0];
LABEL_37:
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v43, v42, v44 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[42]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "microphone input sample time is not valid", 41);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2726792C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[31]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "unknown I/O error has occurred", 30);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::get_terminal_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v6 = *(a1 + 64);
    *a3 = *(a1 + 48);
    *(a3 + 16) = v6;
    v5 = *(a1 + 80);
    goto LABEL_5;
  }

  if (!a2)
  {
    v4 = *(a1 + 24);
    *a3 = *(a1 + 8);
    *(a3 + 16) = v4;
    v5 = *(a1 + 40);
LABEL_5:
    *(a3 + 32) = v5;
    *(a3 + 48) = 1;
    return;
  }

  v8[0] = 0x18003D00000009;
  v8[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
  v10 = 0;
  v11 = 0;
  v9 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v12);
  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v8);
  if (SHIBYTE(v11) < 0)
  {
    (*(*v12 + 24))(v12, v9, v11 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::unregister_listener(vp::services::Model_Manager_Impl::Model_Manager_Monitor *this)
{
  v1 = *(this + 3);
  if (v1 && *(this + 40) == 1)
  {
    v3 = v1;
    [v3 unregister_from_inference_monitorWithObserver:*(this + 4) completionHandler:&__block_literal_global_9202];
  }
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::register_listener(void *a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  if (v2)
  {
    v5 = a1[1];
    v4 = a1[2];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[3];
    }

    v6 = v2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3321888768;
    v9[2] = ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke;
    v9[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvbEEE_e8_v12__0B8l;
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v10, a2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3321888768;
    v7[2] = ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke_1;
    v7[3] = &__block_descriptor_48_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE_e8_v16__0q8l;
    v7[4] = v5;
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    [v6 register_for_inference_monitor_eventsWithEventCallback:v9 completionHandler:v7];

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v10);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_272679664(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        *(v6 + 32) = a2;
        *(v6 + 40) = 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::~Model_Manager_Monitor(id *this)
{
  vp::objc::ID::~ID(this + 3);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::objc::ID::~ID(this + 3);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2726799BC(void *a1)
{
  vp::objc::ID::~ID(&v1[2].__vftable);
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<vp::services::Model_Manager_Impl::Model_Manager_Monitor>::__on_zero_shared(uint64_t a1)
{
  vp::objc::ID::~ID((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<vp::services::Model_Manager_Impl::Model_Manager_Monitor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B9B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::io::Node_Decorator::disconnect(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  (*(*v2 + 104))(v2, &v3);
  vp::objc::ID::~ID(&v3);
}

void vp::vx::io::Node_Decorator::connect(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  (*(*v2 + 96))(v2, &v3);
  vp::objc::ID::~ID(&v3);
}

uint64_t vp::vx::io::Node_Decorator::as_property_controller(vp::vx::io::Node_Decorator *this)
{
  return (*(**(this + 1) + 16))();
}

{
  return (*(**(this + 1) + 16))();
}

uint64_t vp::vx::io::Node_Decorator::as_parameter_controller(vp::vx::io::Node_Decorator *this)
{
  return (***(this + 1))(*(this + 1));
}

{
  return (***(this + 1))(*(this + 1));
}

void vp::vx::io::validate_nonnull(vp::vx::io *this, const AudioBufferList *a2, const AudioTimeStamp *a3, int a4)
{
  if (a2 && a3 && a4)
  {
    *this = 0;
    *(this + 48) = 1;
    return;
  }

  v13[0] = 0x13001700000000;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  vp::vx::io::operator<<<char const(&)[34]>(v12, v13);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v12);
  if (!a3)
  {
    vp::vx::io::operator<<<char const(&)[3]>(v11, v13);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v11);
LABEL_12:
    vp::vx::io::operator<<<char const(&)[33]>(v10, v13);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v10);
  }

  if (a4)
  {
    goto LABEL_16;
  }

  vp::vx::io::operator<<<char const(&)[7]>(v9, v13);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v9);
LABEL_15:
  vp::vx::io::operator<<<char const(&)[26]>(v8, v13, "audio frame count is zero");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v8);
LABEL_16:
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[34]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio buffer list pointer is null", 33);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[3]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[33]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio time stamp pointer is null", 32);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27267A050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[7]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", and ", 6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27267A0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::io::Node_Decorator::Node_Decorator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  v6 = *a3;
  *a3 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a3 + 8);
  *(a1 + 24) = *(a3 + 16);
  v7 = a1 + *(*a1 - 24);
  v8 = *(*v6 - 24);
  v9 = *(v6 + v8 + 8);
  v10 = *(v6 + v8 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v7 + 16);
  *(v7 + 8) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

void std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void vp::vx::io::Node_Socket::~Node_Socket(vp::vx::io::Node_Socket *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  for (i = (this + 16); v3 != v4; v3 += 2)
  {
    v5 = *v3;
    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = 0;
    v15 = 0;
    (*(*v5 + 16))(v5, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v7 = *(this + 35);
  if (v7)
  {
    *(this + 36) = v7;
    operator delete(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    *(this + 33) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    *(this + 30) = v9;
    operator delete(v9);
  }

  v10 = *(this + 26);
  if (v10)
  {
    *(this + 27) = v10;
    operator delete(v10);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    *(this + 21) = v12;
    operator delete(v12);
  }

  v16 = (this + 136);
  std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 112);
  std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 88);
  std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 64);
  std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 40);
  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = i;
  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v13 = *(this + 1);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

uint64_t vp::vx::io::anonymous namespace::remove<unsigned int>(uint64_t result, int a2)
{
  v3 = *result;
  v2 = *(result + 8);
  if (*result != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      for (i = v3 + 1; i != v2; ++i)
      {
        if (*i != a2)
        {
          *v3++ = *i;
        }
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 8) = v3;
  }

  return result;
}

void vp::vx::io::Node_Socket::set_terminal(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  v6 = 24;
  if (!a3)
  {
    v6 = 0;
  }

  v7 = a2 + v6;
  v8 = *(a2 + v6 + 64);
  v9 = *(v7 + 72);
  v10 = (v7 + 64);
  if (a4 >= ((v9 - v8) >> 4))
  {
    v20[0] = 0x1300E200000009;
    v20[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
    v22 = 0;
    v23 = 0;
    v21 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v24);
    v16 = "output";
    if (!a3)
    {
      v16 = "input";
    }

    v17 = v16;
    vp::vx::io::operator<<<char const*>(v18, v20, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " terminal index ", 16);
    MEMORY[0x2743CBB40](v19, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " must be less than ", 19);
    MEMORY[0x2743CBB50](v19, (v10[1] - *v10) >> 4);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v18);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v20);
    if (SHIBYTE(v23) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v24, v21, v23 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v8 + 16 * a4;
    v12 = *a5;
    *a5 = 0uLL;
    v13 = *(v11 + 8);
    *v11 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    *a1 = 0;
    a1[48] = 1;
  }
}

void vp::vx::io::Node_Socket::get_terminal_buffered_frame_count(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v5 = a4;
  if (a3)
  {
    v6 = 24;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + v6 + 64);
  if (a4 < ((*(a2 + v6 + 72) - v7) >> 4))
  {
    v9 = v7 + 16 * a4;
    (*(**v9 + 8))(v26);
    if ((v32 & 1) == 0)
    {
      _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(a1, v26);
LABEL_23:
      if ((v32 & 1) == 0 && SHIBYTE(v29) < 0)
      {
        (*(*v30 + 24))(v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      return;
    }

    v10 = *v26;
    v11 = v31;
    (*(**v9 + 8))(v21);
    if (v25)
    {
      if (v11)
      {
        if (v24)
        {
          v13 = *(a2 + v6 + 160) + (v5 << 6);
          if ((*(v13 + 56) & 1) == 0 || ((v14 = *v13, *v13 >= v10) ? (v15 = v14 < v21[0]) : (v15 = 0), !v15))
          {
            v14 = v10;
          }

          goto LABEL_20;
        }
      }

      else if ((v24 & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 48) = 1;
LABEL_20:
        if ((v25 & 1) == 0 && SHIBYTE(v22) < 0)
        {
          (*(*v23 + 24))(v23, *&v21[2], v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_23;
      }

      v16[0] = 0x18012200000000;
      v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
      v18 = 0;
      v19 = 0;
      v17 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
      v12 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16);
      if (SHIBYTE(v19) < 0)
      {
        (*(*v20 + 24))(v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v12);
      }

      goto LABEL_20;
    }

    _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(a1, v21);
    goto LABEL_20;
  }

  v26[0] = 0x14012700000009;
  v26[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v28 = 0;
  v29 = 0;
  v27 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v26);
  if (SHIBYTE(v29) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void *vp::vx::io::anonymous namespace::get_frame_count(uint64_t a1, double a2, double a3)
{
  v10 = a3 - a2;
  if (a3 - a2 < 0.0 || v10 > 4294967300.0)
  {
    v20 = 0x1B001F00000002;
    v21 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
    v23 = 0;
    v24 = 0;
    v22 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    vp::vx::io::operator<<<char const(&)[55]>(v15, &v20, "cannot construct frame count with sample time diff of ");
    MEMORY[0x2743CBB10](&v17, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " samples", 8);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v15);
    v12 = 0;
    v11 = v20;
    v7 = WORD2(v20);
    v5 = HIWORD(v20);
    v8 = v21;
    v3 = v22;
    v6 = v24;
    v14 = v23;
    v4 = v25;
    v23 = 0;
    v24 = 0;
    v22 = 0;
  }

  else
  {
    v11 = vcvtmd_u64_f64(v10);
    v12 = 1;
  }

  v15[0] = 0x19002500000000;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  result = vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v19);
  *(a1 + 48) = v12;
  *a1 = v11;
  if ((v12 & 1) == 0)
  {
    *(a1 + 4) = v7;
    *(a1 + 6) = v5;
    *(a1 + 8) = v8;
    *(a1 + 16) = v3;
    *(a1 + 24) = v14;
    *(a1 + 32) = v6;
    *(a1 + 40) = v4;
    v3 = 0;
    v6 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    result = (*(*v19[0] + 24))(v19[0], v16, v18 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if ((v12 & 1) == 0 && v6 < 0)
  {
    return (*(*v4 + 24))(v4, v3, v6 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

void sub_27267ABC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v17 - 113) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v17 - 112), *(v17 - 136), *(v17 - 120) & 0x7FFFFFFFFFFFFFFFLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  a11 = 0x19002500000000;
  a12 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  a13 = 0;
  a14 = 0;
  a15 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&a16);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v16, &a11);
  if (SHIBYTE(a15) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a16, a13, a15 & 0x7FFFFFFFFFFFFFFFLL);
  }

  JUMPOUT(0x27267AB98);
}

void vp::vx::io::Node_Socket::process(vp::vx::io::Node_Socket *this, void *a2, unsigned int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = (a2[9] - a2[8]) >> 4;
    MEMORY[0x28223BE20](*a2);
    v8 = &v28[-2] - v7;
    v10 = (*(v9 + 96) - *(v9 + 88)) >> 4;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = &v28[-2] - v13;
    v16 = (*(*v15 + 40))(v15, v12);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v21 = (*(**a2 + 32))();
        while (1)
        {
          v22 = v21 >= a3 ? a3 : v21;
          (*(**a2 + 64))(v33);
          if ((v38 & 1) == 0)
          {
            break;
          }

          vp::vx::io::Node_Socket::process_data(v28, a2, v22, v8, v6, v33[0], v14, v10, v22);
          if ((v32 & 1) == 0)
          {
            goto LABEL_42;
          }

          if ((v38 & 1) == 0 && SHIBYTE(v36) < 0)
          {
            (*(*v37 + 24))(v37, v34, v36 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          a3 -= v22;
          if (!a3)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = (*(**a2 + 32))();
        while (1)
        {
          v26 = v25 >= a3 ? a3 : v25;
          (*(**a2 + 72))(v33);
          if ((v38 & 1) == 0)
          {
            break;
          }

          vp::vx::io::Node_Socket::process_data(v28, a2, v26, v8, v6, v26, v14, v10, v33[0]);
          if ((v32 & 1) == 0)
          {
LABEL_42:
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v28);
            if ((v32 & 1) == 0 && SHIBYTE(v30) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v31, v29, v30 & 0x7FFFFFFFFFFFFFFFLL);
            }

            goto LABEL_46;
          }

          if ((v38 & 1) == 0 && SHIBYTE(v36) < 0)
          {
            (*(*v37 + 24))(v37, v34, v36 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          a3 -= v26;
          if (!a3)
          {
            goto LABEL_39;
          }
        }
      }

      _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(this, v33);
LABEL_46:
      if (v38)
      {
        return;
      }

      goto LABEL_47;
    }

    if (v16)
    {
      v23 = (*(**a2 + 32))();
      while (1)
      {
        v24 = v23 >= a3 ? a3 : v23;
        vp::vx::io::Node_Socket::process_data(v33, a2, v24, v8, v6, v24, v14, v10, v24);
        if ((v38 & 1) == 0)
        {
          break;
        }

        a3 -= v24;
        if (!a3)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v33);
      goto LABEL_46;
    }

    v17 = (*(**a2 + 32))();
    v18 = a3 / v17;
    if (a3 / v17 * v17 == a3)
    {
      v19 = v17;
      if (v17 > a3)
      {
LABEL_39:
        *this = 0;
        *(this + 48) = 1;
        return;
      }

      v20 = 0;
      while (1)
      {
        vp::vx::io::Node_Socket::process_data(v33, a2, v19, v8, v6, v19, v14, v10, v19);
        if ((v38 & 1) == 0)
        {
          goto LABEL_45;
        }

        if (++v20 >= v18)
        {
          goto LABEL_39;
        }
      }
    }
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  v33[0] = 0x14022100000002;
  v33[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v35 = 0;
  v36 = 0;
  v34 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v37);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v33);
LABEL_47:
  if (SHIBYTE(v36) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v37, v34, v36 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_27267B12C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::io::Node_Socket::process_data(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a8;
  *a1 = 0;
  a1[48] = 1;
  vp::vx::io::Node_Socket::pre_process_data_impl(v20, a2, 0, a4, a5, a6);
  result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
  if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
  {
    result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (a1[48] == 1)
  {
    vp::vx::io::Node_Socket::pre_process_data_impl(v20, a2, 1, a7, v9, a9);
    result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
    if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
    {
      result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    if (a1[48] == 1)
    {
      v14 = a2[5];
      v15 = a2[6];
      while (v14 != v15)
      {
        v16 = *v14;
        v14 += 2;
        (*(*v16 + 24))(v16, 0, *a2);
      }

      LOBYTE(v20[0]) = 0;
      v24 = 1;
      result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
      if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
      {
        result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      if (a1[48] == 1)
      {
        (*(**a2 + 80))(v20);
        result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
        if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
        {
          result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        if (a1[48] == 1)
        {
          v17 = a2[5];
          v18 = a2[6];
          while (v17 != v18)
          {
            v19 = *v17;
            v17 += 2;
            (*(*v19 + 24))(v19, 1, *a2);
          }

          LOBYTE(v20[0]) = 0;
          v24 = 1;
          result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
          if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if (a1[48] == 1)
          {
            vp::vx::io::Node_Socket::post_process_data_impl(v20, a2, 0);
            result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
            if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
            {
              result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (a1[48] == 1)
            {
              vp::vx::io::Node_Socket::post_process_data_impl(v20, a2, 1);
              result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
              if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
              {
                return std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void vp::vx::io::Node_Socket::pre_process_data_impl(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6)
{
  if (a3)
  {
    v6 = 24;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 + v6 + 64);
  if (*(a2 + v6 + 72) == *v7)
  {
LABEL_10:
    *a1 = 0;
    a1[48] = 1;
  }

  else
  {
    v10 = 0;
    v11 = a2 + 112;
    v12 = a2 + 160;
    v13 = 1;
    while (1)
    {
      vp::Audio_Buffer::prepare((*(v11 + v6) + 8 * v10), a6);
      v14 = *(*(v11 + v6) + 8 * v10);
      if (v14)
      {
        v14 = *(v14 + 80);
      }

      v15 = a4 + 24 * v10;
      v16 = *(v12 + v6) + (v10 << 6);
      *v15 = v14;
      *(v15 + 8) = v16;
      *(v15 + 16) = a6;
      (*(**(*v7 + 16 * v10) + 16))(v18);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v10 = v13++;
      if (v10 >= (v7[1] - *v7) >> 4)
      {
        goto LABEL_10;
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v18);
    if ((v21 & 1) == 0 && SHIBYTE(v19) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v18[2], v19 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}