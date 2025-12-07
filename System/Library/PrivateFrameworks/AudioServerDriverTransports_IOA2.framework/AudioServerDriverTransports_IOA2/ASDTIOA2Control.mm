@interface ASDTIOA2Control
+ (id)controlWithDictionary:(id)dictionary owningDevice:(id)device;
@end

@implementation ASDTIOA2Control

+ (id)controlWithDictionary:(id)dictionary owningDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  deviceCopy = device;
  v7 = dictionaryCopy;
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
    cf = v8;
    v9 = CFGetTypeID(v8);
    if (v9 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  v11 = [v8 objectForKeyedSubscript:@"control ID"];
  unsignedIntValue = [v11 unsignedIntValue];

  ControlInfo_Class = ASDT::IOA2UserClient::GetControlInfo_Class(&cf, v13);
  ControlInfo_BaseClass = ASDT::IOA2UserClient::GetControlInfo_BaseClass(&cf, v15);
  ControlInfo_Scope = ASDT::IOA2UserClient::GetControlInfo_Scope(&cf, v17);
  ControlInfo_Element = ASDT::IOA2UserClient::GetControlInfo_Element(&cf, v19);
  Only = ASDT::IOA2UserClient::GetControlInfo_IsReadOnly(&cf, v21);
  if (ControlInfo_BaseClass <= 1936483187)
  {
    if (ControlInfo_BaseClass == 1651273579)
    {
      v26 = [[ASDTIOA2BlockControl alloc] initWithIOA2Device:deviceCopy userClientID:unsignedIntValue isSettable:Only ^ 1 forElement:ControlInfo_Element inScope:ControlInfo_Scope objectClassID:ControlInfo_Class];
      goto LABEL_39;
    }

    if (ControlInfo_BaseClass != 1818588780)
    {
      goto LABEL_20;
    }

    v25 = off_278CE8970;
LABEL_18:
    v26 = [objc_alloc(*v25) initWithIOA2Device:deviceCopy userClientID:unsignedIntValue isSettable:Only ^ 1 forElement:ControlInfo_Element inScope:ControlInfo_Scope objectClassID:ControlInfo_Class dictionary:v8];
    goto LABEL_39;
  }

  switch(ControlInfo_BaseClass)
  {
    case 1936483188:
      v25 = off_278CE8990;
      goto LABEL_18;
    case 1936483442:
      v25 = off_278CE89A0;
      goto LABEL_18;
    case 1953458028:
      if (ControlInfo_Class > 1885888877)
      {
        if (ControlInfo_Class == 1885888878)
        {
          v24 = off_278CE8980;
          goto LABEL_38;
        }

        if (ControlInfo_Class == 1885893481)
        {
          v24 = off_278CE8988;
          goto LABEL_38;
        }
      }

      else
      {
        if (ControlInfo_Class == 1784767339)
        {
          v24 = off_278CE8968;
          goto LABEL_38;
        }

        if (ControlInfo_Class == 1836414053)
        {
          v24 = off_278CE8978;
LABEL_38:
          v26 = [objc_alloc(*v24) initWithIOA2Device:deviceCopy userClientID:unsignedIntValue isSettable:Only ^ 1 element:ControlInfo_Element scope:ControlInfo_Scope dictionary:v8];
          goto LABEL_39;
        }
      }

      v26 = [[ASDTIOA2BooleanControl alloc] initWithIOA2Device:deviceCopy userClientID:unsignedIntValue isSettable:Only ^ 1 element:ControlInfo_Element scope:ControlInfo_Scope objectClassID:ControlInfo_Class dictionary:v8];
LABEL_39:
      v32 = v26;
      goto LABEL_40;
  }

LABEL_20:
  v27 = ASDTIOA2LogType(Only, v23);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HIBYTE(ControlInfo_BaseClass);
    if ((ControlInfo_BaseClass - 0x20000000) >> 24 >= 0x5F)
    {
      v28 = 32;
    }

    v29 = BYTE2(ControlInfo_BaseClass);
    if (BYTE2(ControlInfo_BaseClass) - 32 >= 0x5F)
    {
      v29 = 32;
    }

    v30 = BYTE1(ControlInfo_BaseClass);
    if (BYTE1(ControlInfo_BaseClass) - 32 >= 0x5F)
    {
      v30 = 32;
    }

    *buf = 67110144;
    v36 = ControlInfo_BaseClass;
    v37 = 1024;
    v38 = v28;
    v39 = 1024;
    v40 = v29;
    v41 = 1024;
    v42 = v30;
    if (ControlInfo_BaseClass - 32 >= 0x5F)
    {
      v31 = 32;
    }

    else
    {
      v31 = ControlInfo_BaseClass;
    }

    v43 = 1024;
    v44 = v31;
    _os_log_impl(&dword_2416BA000, v27, OS_LOG_TYPE_DEFAULT, "Warning: Control base class %x ('%c%c%c%c') not supported", buf, 0x20u);
  }

  v32 = 0;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return v32;
}

@end