uint64_t sub_100186A84(void *a1, void *a2, unsigned int a3, NSMutableDictionary **a4)
{
  v5 = a2;
  if (!a1)
  {
    v36 = 0;
    goto LABEL_462;
  }

  v6 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:@"version"];
  v623 = v7;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 2;
  }

  v10 = [a1 serialNumber];

  v624 = v6;
  if (!v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v574 = ClassName;
      v6 = v624;
      v28(3, "%c[%{public}s %{public}s]:%i Failed to get serial number failing remote admin state", v32, v574, Name, 103);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(a1);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v35;
      *v692 = 2082;
      *&v692[2] = object_getClassName(a1);
      *&v692[10] = 2082;
      *&v692[12] = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      *&v692[20] = 1024;
      *&v692[22] = 103;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get serial number failing remote admin state", buf, 0x22u);
    }

    v36 = 13;
    goto LABEL_461;
  }

  [(NSMutableDictionary *)v6 setObject:@"JCOP" forKey:@"secureElementType"];
  v11 = [a1 serialNumber];
  [(NSMutableDictionary *)v6 setObject:v11 forKey:@"SEID"];

  v12 = [a1 rsaCertificate];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 eccCertificate];

    if (v14)
    {
      v15 = objc_opt_new();
      v16 = [a1 rsaCertificate];
      [v15 setObject:v16 forKey:@"RSA"];

      v17 = [a1 eccCertificate];
      [v15 setObject:v17 forKey:@"ECDSA"];

      if (v9 <= 3)
      {
        v18 = [a1 eccCertificate];
        [v15 setObject:v18 forKey:@"ECC"];

        v19 = [a1 eckaCertificate];

        if (v19)
        {
          v20 = [a1 eckaCertificate];
          [v15 setObject:v20 forKey:@"ECKA"];
        }
      }

      [(NSMutableDictionary *)v6 setObject:v15 forKey:@"casdCertificate"];
    }
  }

  v21 = objc_opt_new();
  v22 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v23 = sub_1001595DC(a1, v22, 0);

  v621 = v5;
  v650 = a1;
  v617 = v9;
  if (v23)
  {
    v24 = sub_100158AB4(a1, 193);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 NF_asHexString];
      [v21 setObject:v26 forKey:@"isdSequenceCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(a1);
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(a1);
        v589 = sel_getName("_getISDInfo");
        v50 = 45;
        if (v48)
        {
          v50 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to get sequence counter", v50, v49, v589, 300);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v51 = object_getClass(a1);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v52;
        *v692 = 2082;
        *&v692[2] = object_getClassName(a1);
        *&v692[10] = 2082;
        *&v692[12] = sel_getName("_getISDInfo");
        *&v692[20] = 1024;
        *&v692[22] = 300;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sequence counter", buf, 0x22u);
      }
    }

    v53 = sub_100158F70(a1, 254, 0xDF20u);
    if (v53)
    {
      v54 = [[NSString alloc] initWithData:v53 encoding:4];
      if (v54)
      {
        v55 = v54;
        [v21 setObject:v54 forKey:@"kPlatformId"];
        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(a1);
        v590 = sel_getName("_getISDInfo");
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Fail to encode platform ID into string", v61, v60, v590, 310);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(a1);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(a1);
        v66 = sel_getName("_getISDInfo");
        *buf = 67109890;
        *&buf[4] = v64;
        *v692 = 2082;
        *&v692[2] = v65;
        *&v692[10] = 2082;
        *&v692[12] = v66;
        *&v692[20] = 1024;
        *&v692[22] = 310;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to encode platform ID into string", buf, 0x22u);
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(a1);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(a1);
      v591 = sel_getName("_getISDInfo");
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(3, "%c[%{public}s %{public}s]:%i Failed to get platform ID", v72, v71, v591, 318);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(a1);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(a1);
      v77 = sel_getName("_getISDInfo");
      *buf = 67109890;
      *&buf[4] = v75;
      *v692 = 2082;
      *&v692[2] = v76;
      *&v692[10] = 2082;
      *&v692[12] = v77;
      *&v692[20] = 1024;
      *&v692[22] = 318;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get platform ID", buf, 0x22u);
    }

    v55 = 0;
LABEL_68:
    v78 = sub_100158F70(a1, 254, 0xDF31u);
    v79 = v78;
    if (v78 && [v78 length] > 1)
    {
      v91 = [v79 subdataWithRange:{0, 2}];
      v92 = v55;
      v93 = *[v91 bytes];
      if ([v92 isEqualToString:@"N5E0000000990000"] && bswap32(v93) >> 16 >= 0xB4)
      {
        v94 = [NSData NF_dataWithHexString:@"00B3"];
      }

      else
      {
        v94 = v91;
      }

      v86 = v94;

      v95 = [v86 NF_asHexString];
      [v21 setObject:v95 forKey:@"jsblSequenceCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(a1);
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(a1);
        v592 = sel_getName("_getISDInfo");
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Failed to get update info", v85, v84, v592, 324);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      v87 = object_getClass(a1);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(a1);
      v90 = sel_getName("_getISDInfo");
      *buf = 67109890;
      *&buf[4] = v88;
      *v692 = 2082;
      *&v692[2] = v89;
      *&v692[10] = 2082;
      *&v692[12] = v90;
      *&v692[20] = 1024;
      *&v692[22] = 324;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get update info", buf, 0x22u);
    }

    v6 = v624;
LABEL_86:

    v96 = v21;
    v33 = v96;
    v5 = v621;
    goto LABEL_87;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v38 = v37;
    v39 = object_getClass(a1);
    v40 = class_isMetaClass(v39);
    v41 = object_getClassName(a1);
    v588 = sel_getName("_getISDInfo");
    v42 = 45;
    if (v40)
    {
      v42 = 43;
    }

    v38(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v42, v41, v588, 290);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v43 = object_getClass(a1);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v44;
    *v692 = 2082;
    *&v692[2] = object_getClassName(a1);
    *&v692[10] = 2082;
    *&v692[12] = sel_getName("_getISDInfo");
    *&v692[20] = 1024;
    *&v692[22] = 290;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
  }

  v33 = 0;
LABEL_87:

  if (v33)
  {
    [(NSMutableDictionary *)v6 addEntriesFromDictionary:v33];
  }

  v97 = objc_opt_new();
  v98 = [[NSData alloc] initWithBytes:&unk_10029781C length:12];
  v99 = sub_100158A6C(a1, v98, 0);

  v620 = v33;
  if ([v99 status] == 26277)
  {
    [v97 setObject:&__kCFBooleanTrue forKey:@"restrictedMode"];
LABEL_114:
    v121 = v97;
    goto LABEL_115;
  }

  if ([v99 status] == 36864)
  {
    LODWORD(v688) = 0;
    memset(v687, 0, sizeof(v687));
    if (sub_100092D68(a1, v687))
    {
      *&v668 = @"persistentMemory";
      v100 = [NSNumber numberWithUnsignedInt:*v687];
      *buf = v100;
      *(&v668 + 1) = @"clearOnResetMemory";
      v657 = [NSNumber numberWithUnsignedInt:*&v687[4]];
      *v692 = v657;
      *&v669 = @"clearOnDeselectMemory";
      v652 = [NSNumber numberWithUnsignedInt:*&v687[8]];
      *&v692[8] = v652;
      *(&v669 + 1) = @"availableIndicies";
      v643 = [NSNumber numberWithUnsignedInt:*&v687[12]];
      *&v692[16] = v643;
      *&v670 = @"totalNumberOfIndicies";
      v639 = [NSNumber numberWithUnsignedInt:*&v687[16]];
      *&v692[24] = v639;
      *(&v670 + 1) = @"availablePersistent";
      v634 = [NSNumber numberWithUnsignedInt:*&v687[20]];
      v693 = v634;
      *&v671 = @"availableTransienteUICC";
      v631 = [NSNumber numberWithUnsignedInt:*&v687[24]];
      v694 = v631;
      *(&v671 + 1) = @"reservedClearOnDelect";
      v101 = [NSNumber numberWithUnsignedInt:*&v687[28]];
      v695 = v101;
      v672 = @"maximumMappedClearOnDeselect";
      v102 = [NSNumber numberWithUnsignedInt:*&v687[32]];
      v696 = v102;
      v673 = @"reservedTransientOSUpdate";
      v103 = [NSNumber numberWithUnsignedInt:*&v687[36]];
      v697 = v103;
      v674 = @"reservedPersistentOSUpdate";
      v104 = [NSNumber numberWithUnsignedInt:*&v687[40]];
      v698 = v104;
      v675 = @"transientCommonPool";
      v105 = [NSNumber numberWithUnsignedInt:*&v687[44]];
      v699 = v105;
      v676 = @"persistentCommonPool";
      v106 = [NSNumber numberWithUnsignedInt:v688];
      v700 = v106;
      v107 = [NSDictionary dictionaryWithObjects:buf forKeys:&v668 count:13];
      [v97 setObject:v107 forKey:@"availableMemory"];

      a1 = v650;
      v33 = v620;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v122 = NFLogGetLogger();
      if (v122)
      {
        v123 = v122;
        v124 = object_getClass(a1);
        v125 = class_isMetaClass(v124);
        v126 = object_getClassName(a1);
        v594 = sel_getName("_getCASDInfo");
        v127 = 45;
        if (v125)
        {
          v127 = 43;
        }

        v576 = v126;
        v33 = v620;
        v123(4, "%c[%{public}s %{public}s]:%i Failed to get memory info", v127, v576, v594, 415);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v100 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v128 = object_getClass(a1);
        if (class_isMetaClass(v128))
        {
          v129 = 43;
        }

        else
        {
          v129 = 45;
        }

        v130 = object_getClassName(a1);
        v131 = sel_getName("_getCASDInfo");
        *buf = 67109890;
        *&buf[4] = v129;
        v33 = v620;
        *v692 = 2082;
        *&v692[2] = v130;
        *&v692[10] = 2082;
        *&v692[12] = v131;
        *&v692[20] = 1024;
        *&v692[22] = 415;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get memory info", buf, 0x22u);
      }
    }

    v5 = v621;

    goto LABEL_114;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v108 = NFLogGetLogger();
  if (v108)
  {
    v109 = v108;
    v110 = object_getClass(a1);
    v111 = class_isMetaClass(v110);
    v112 = object_getClassName(a1);
    v113 = sel_getName("_getCASDInfo");
    v610 = [v99 status];
    v575 = v112;
    v593 = v113;
    v33 = v620;
    v5 = v621;
    v114 = 45;
    if (v111)
    {
      v114 = 43;
    }

    v109(3, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", v114, v575, v593, 408, v610);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v115 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
  {
    v116 = object_getClass(a1);
    if (class_isMetaClass(v116))
    {
      v117 = 43;
    }

    else
    {
      v117 = 45;
    }

    v118 = object_getClassName(a1);
    v119 = sel_getName("_getCASDInfo");
    v120 = [v99 status];
    *buf = 67110146;
    *&buf[4] = v117;
    v33 = v620;
    *v692 = 2082;
    *&v692[2] = v118;
    *&v692[10] = 2082;
    *&v692[12] = v119;
    *&v692[20] = 1024;
    *&v692[22] = 408;
    *&v692[26] = 1024;
    *&v692[28] = v120;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", buf, 0x28u);
  }

  v121 = 0;
LABEL_115:

  if (v121)
  {
    [(NSMutableDictionary *)v624 addEntriesFromDictionary:v121];
  }

  v622 = [(NSMutableDictionary *)v624 valueForKey:@"restrictedMode"];

  v132 = [a1 handle];
  v133 = [v132 info];
  v134 = [v133 deviceType];

  v618 = v121;
  if (v134 > 99)
  {
    if (v134 > 199)
    {
      v6 = v624;
      if (v134 == 210)
      {
        v135 = 8;
      }

      else
      {
        if (v134 != 200)
        {
          goto LABEL_178;
        }

        v135 = 7;
      }
    }

    else
    {
      v6 = v624;
      if (v134 == 100)
      {
        v135 = 6;
      }

      else
      {
        if (v134 != 145)
        {
          goto LABEL_178;
        }

        v135 = 15;
      }
    }
  }

  else if (v134 > 54)
  {
    v6 = v624;
    if (v134 == 55)
    {
      v135 = 10;
    }

    else
    {
      if (v134 != 56)
      {
        goto LABEL_178;
      }

      v135 = 13;
    }
  }

  else
  {
    v6 = v624;
    if (v134 != 44)
    {
      if (v134 == 54)
      {
        v135 = 11;
        goto LABEL_136;
      }

LABEL_178:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v196 = NFLogGetLogger();
      if (v196)
      {
        v197 = v196;
        v198 = object_getClass(a1);
        v199 = class_isMetaClass(v198);
        v200 = object_getClassName(a1);
        v598 = sel_getName("_getTSMHardwareType");
        v401 = !v199;
        v6 = v624;
        v201 = 45;
        if (!v401)
        {
          v201 = 43;
        }

        v580 = v200;
        v121 = v618;
        v197(3, "%c[%{public}s %{public}s]:%i Critical error : unsupported hardware!", v201, v580, v598, 83);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v202 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
      {
        v203 = object_getClass(a1);
        if (class_isMetaClass(v203))
        {
          v204 = 43;
        }

        else
        {
          v204 = 45;
        }

        v205 = object_getClassName(a1);
        v206 = sel_getName("_getTSMHardwareType");
        *buf = 67109890;
        *&buf[4] = v204;
        v121 = v618;
        *v692 = 2082;
        *&v692[2] = v205;
        v6 = v624;
        *&v692[10] = 2082;
        *&v692[12] = v206;
        *&v692[20] = 1024;
        *&v692[22] = 83;
        _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Critical error : unsupported hardware!", buf, 0x22u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v207 = NFLogGetLogger();
      if (v207)
      {
        v208 = v207;
        v209 = object_getClass(a1);
        v210 = class_isMetaClass(v209);
        v211 = object_getClassName(a1);
        v599 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
        v212 = 45;
        if (v210)
        {
          v212 = 43;
        }

        v581 = v211;
        v6 = v624;
        v208(3, "%c[%{public}s %{public}s]:%i Unknown hardware platform", v212, v581, v599, 143);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v213 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
      {
        v214 = object_getClass(a1);
        if (class_isMetaClass(v214))
        {
          v215 = 43;
        }

        else
        {
          v215 = 45;
        }

        v216 = object_getClassName(a1);
        v217 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
        *buf = 67109890;
        *&buf[4] = v215;
        v6 = v624;
        *v692 = 2082;
        *&v692[2] = v216;
        *&v692[10] = 2082;
        *&v692[12] = v217;
        *&v692[20] = 1024;
        *&v692[22] = 143;
        _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown hardware platform", buf, 0x22u);
      }

      v140 = 0;
      goto LABEL_408;
    }

    v135 = 9;
  }

LABEL_136:
  v136 = [NSNumber numberWithUnsignedInteger:v135];
  [(NSMutableDictionary *)v6 setObject:v136 forKey:@"hardwareType"];

  if (!v622)
  {
    if (sub_10018AF80(a1))
    {
      v644 = sub_10018B0A0(a1, a3);
      v141 = [[NSData alloc] initWithBytes:&unk_100297922 length:8];
      *&v668 = v141;
      v142 = [[NSData alloc] initWithBytes:&unk_10029792A length:9];
      *(&v668 + 1) = v142;
      v143 = [[NSData alloc] initWithBytes:&unk_100297933 length:12];
      *&v669 = v143;
      v144 = [[NSData alloc] initWithBytes:&unk_10029793F length:14];
      *(&v669 + 1) = v144;
      v145 = [[NSData alloc] initWithBytes:&unk_10029794D length:8];
      *&v670 = v145;
      v146 = [[NSData alloc] initWithBytes:&unk_100297955 length:10];
      *(&v670 + 1) = v146;
      v147 = [[NSData alloc] initWithBytes:&unk_10029795F length:12];
      *&v671 = v147;
      v148 = [NSArray arrayWithObjects:&v668 count:7];
      v149 = [NSMutableArray arrayWithArray:v148];

      if (NFIsInternalBuild())
      {
        v150 = [[NSUserDefaults alloc] initWithSuiteName:@"nfcd"];
        v151 = [v150 BOOLForKey:@"UnhideFTA"];

        if (v151)
        {
          v152 = [[NSData alloc] initWithBytes:&unk_10029793F length:14];
          [v149 removeObject:v152];
        }
      }

      v153 = [[NSData alloc] initWithBytes:&unk_10029796B length:13];
      *v679 = v153;
      v154 = [[NSData alloc] initWithBytes:&unk_100297978 length:12];
      *v680 = v154;
      v155 = [[NSData alloc] initWithBytes:&unk_100297984 length:15];
      *&v680[8] = v155;
      v156 = [NSArray arrayWithObjects:v679 count:3];

      *v687 = 0;
      *&v687[8] = v687;
      *&v687[16] = 0x3032000000;
      *&v687[24] = sub_100006AEC;
      *&v687[32] = sub_10018E310;
      *&v687[40] = objc_opt_new();
      *buf = _NSConcreteStackBlock;
      *v692 = 3221225472;
      *&v692[8] = sub_10018FB14;
      *&v692[16] = &unk_10031AAF0;
      a1 = v650;
      *&v692[24] = v650;
      v696 = "getStatusProprietaryPackagesWithFiltering:";
      LOBYTE(v697) = a3;
      v157 = v156;
      v693 = v157;
      v158 = v149;
      v694 = v158;
      v695 = v687;
      v159 = sub_10018EE10(v650, 16, &unk_10029791E, 4uLL, buf);
      v5 = v621;
      if (v159)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v160 = NFLogGetLogger();
        v140 = v644;
        if (v160)
        {
          v161 = v160;
          v162 = object_getClass(v650);
          v163 = class_isMetaClass(v162);
          v577 = object_getClassName(v650);
          v595 = sel_getName("getStatusProprietaryPackagesWithFiltering:");
          v164 = 45;
          if (v163)
          {
            v164 = 43;
          }

          v5 = v621;
          v161(3, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", v164, v577, v595, 1084, v159);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v165 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          v166 = object_getClass(v650);
          if (class_isMetaClass(v166))
          {
            v167 = 43;
          }

          else
          {
            v167 = 45;
          }

          v168 = object_getClassName(v650);
          v169 = sel_getName("getStatusProprietaryPackagesWithFiltering:");
          *md = 67110146;
          *&md[4] = v167;
          *&md[8] = 2082;
          *&md[10] = v168;
          *&md[18] = 2082;
          *&md[20] = v169;
          *&md[28] = 1024;
          *&md[30] = 1084;
          *&md[34] = 2114;
          *&md[36] = v159;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", md, 0x2Cu);
        }

        v170 = 0;
      }

      else
      {
        v690[0] = @"packages";
        *md = *(*&v687[8] + 40);
        v170 = [NSDictionary dictionaryWithObjects:md forKeys:v690 count:1];
        v140 = v644;
      }

      _Block_object_dispose(v687, 8);
      v218 = [v140 objectForKeyedSubscript:@"orphanedSSDs"];
      v661[0] = _NSConcreteStackBlock;
      v661[1] = 3221225472;
      v661[2] = sub_10018BA74;
      v661[3] = &unk_10031AA78;
      v219 = v170;
      v662 = v219;
      v220 = [NSPredicate predicateWithBlock:v661];
      [v218 filterUsingPredicate:v220];

      v221 = v624;
      if (v140)
      {
        [(NSMutableDictionary *)v624 addEntriesFromDictionary:v140];
      }

      v33 = v620;
      if (v219)
      {
        [(NSMutableDictionary *)v624 addEntriesFromDictionary:v219];
      }

      goto LABEL_297;
    }

    v663 = 0;
    v182 = sub_1001599F4(a1, &v663);
    v183 = v663;
    if (v183)
    {
      v184 = v183;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v185 = NFLogGetLogger();
      if (v185)
      {
        v186 = v185;
        v187 = object_getClass(a1);
        v188 = class_isMetaClass(v187);
        v579 = object_getClassName(a1);
        v597 = sel_getName("_getCRSInfoWithFiltering:");
        v401 = !v188;
        v6 = v624;
        v189 = 45;
        if (!v401)
        {
          v189 = 43;
        }

        v186(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v189, v579, v597, 443, v184);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v190 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        v191 = object_getClass(a1);
        if (class_isMetaClass(v191))
        {
          v192 = 43;
        }

        else
        {
          v192 = 45;
        }

        v193 = object_getClassName(a1);
        v194 = sel_getName("_getCRSInfoWithFiltering:");
        *v679 = 67110146;
        *&v679[4] = v192;
        *v680 = 2082;
        *&v680[2] = v193;
        v6 = v624;
        *&v680[10] = 2082;
        *&v680[12] = v194;
        v681 = 1024;
        v682 = 443;
        v683 = 2114;
        v684 = v184;
        _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v679, 0x2Cu);
      }

      v195 = [v184 code];
      if (v195 != 24)
      {
        v140 = 0;
LABEL_287:
        v332 = objc_opt_new();
        v333 = [[NSData alloc] initWithBytes:&unk_10029788E length:12];
        v334 = sub_100158A6C(a1, v333, 0);

        if ([v334 status] == 36864)
        {
          v335 = [[NSData alloc] initWithBytes:&unk_10029788E length:12];
          v336 = [v335 NF_asHexString];
          [v332 addObject:v336];
        }

        v337 = [[NSData alloc] initWithBytes:&unk_10029789A length:12];
        v338 = sub_100158A6C(a1, v337, 0);

        if ([v338 status] == 36864)
        {
          v339 = [[NSData alloc] initWithBytes:&unk_10029789A length:12];
          v340 = [v339 NF_asHexString];
          [v332 addObject:v340];
        }

        if ([v332 count])
        {
          *&v668 = @"VASDs";
          *buf = v332;
          v341 = [NSDictionary dictionaryWithObjects:buf forKeys:&v668 count:1];
        }

        else
        {
          v341 = 0;
        }

        if (v341)
        {
          [(NSMutableDictionary *)v624 addEntriesFromDictionary:v341];
        }

        v221 = v624;
LABEL_297:
        if (v617 >= 4)
        {
          v342 = [v5 objectForKeyedSubscript:@"whitelistedInstances"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v342 count])
          {
            v343 = [v342 objectAtIndexedSubscript:0];
            if (v343)
            {
              v344 = [v342 objectAtIndexedSubscript:0];
            }

            else
            {
              v344 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v355 = sub_10018BBC4(a1, v140, v344);
              if (v355)
              {
                [(NSMutableDictionary *)v624 setObject:v355 forKeyedSubscript:@"protocolV4Containers"];
              }

              v221 = v624;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v356 = NFLogGetLogger();
              if (v356)
              {
                v357 = v356;
                v358 = object_getClass(a1);
                v359 = class_isMetaClass(v358);
                v360 = object_getClassName(a1);
                v602 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
                v361 = 45;
                if (v359)
                {
                  v361 = 43;
                }

                v357(3, "%c[%{public}s %{public}s]:%i Unexpected type for allow listed AID.", v361, v360, v602, 203);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v362 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
              {
                v363 = object_getClass(a1);
                if (class_isMetaClass(v363))
                {
                  v364 = 43;
                }

                else
                {
                  v364 = 45;
                }

                v365 = object_getClassName(a1);
                v366 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
                *buf = 67109890;
                *&buf[4] = v364;
                *v692 = 2082;
                *&v692[2] = v365;
                *&v692[10] = 2082;
                *&v692[12] = v366;
                *&v692[20] = 1024;
                *&v692[22] = 203;
                _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type for allow listed AID.", buf, 0x22u);
              }

              v221 = v624;
              v33 = v620;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v345 = NFLogGetLogger();
            if (v345)
            {
              v346 = v345;
              v347 = object_getClass(a1);
              v348 = class_isMetaClass(v347);
              v349 = object_getClassName(a1);
              v601 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
              v401 = !v348;
              v221 = v624;
              v350 = 45;
              if (!v401)
              {
                v350 = 43;
              }

              v346(4, "%c[%{public}s %{public}s]:%i No whitelisted AID found. Will not populate the V4 container!", v350, v349, v601, 207);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v344 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
            {
              v351 = object_getClass(a1);
              if (class_isMetaClass(v351))
              {
                v352 = 43;
              }

              else
              {
                v352 = 45;
              }

              v353 = object_getClassName(a1);
              v354 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
              *buf = 67109890;
              *&buf[4] = v352;
              *v692 = 2082;
              *&v692[2] = v353;
              v221 = v624;
              *&v692[10] = 2082;
              *&v692[12] = v354;
              *&v692[20] = 1024;
              *&v692[22] = 207;
              _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No whitelisted AID found. Will not populate the V4 container!", buf, 0x22u);
            }
          }
        }

        v367 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
        v368 = sub_1001595DC(a1, v367, 0);

        if (v368)
        {
          v369 = sub_10018D288(a1, 1);
          if (v369)
          {
            [(NSMutableDictionary *)v221 addEntriesFromDictionary:v369];
          }

          v636 = v369;
          v370 = v221;
          v371 = objc_autoreleasePoolPush();
          v372 = [(NSMutableDictionary *)v370 objectForKey:@"casdCertificate"];
          v373 = [v372 objectForKey:@"RSA"];
          v374 = [v372 objectForKey:@"ECDSA"];
          v633 = v370;
          v375 = [(NSMutableDictionary *)v370 objectForKey:@"isdSequenceCounter"];
          v376 = objc_opt_new();
          if (v374 && v373)
          {
            v377 = [NSData NF_dataWithHexString:v374];
            [v376 appendData:v377];

            v378 = [NSData NF_dataWithHexString:v373];
            [v376 appendData:v378];
          }

          v379 = [NSData NF_dataWithHexString:v375];
          [v376 appendData:v379];

          CC_SHA256([v376 bytes], objc_msgSend(v376, "length"), md);
          objc_autoreleasePoolPop(v371);
          v630 = [[NSData alloc] initWithBytes:md length:32];
          v380 = [NFTLV TLVWithTag:40759 value:?];
          *v679 = 836706527;
          v381 = [[NSData alloc] initWithBytes:v679 length:4];
          v382 = [NFTLV TLVWithTag:92 value:v381];

          v383 = objc_opt_new();
          obja = v380;
          v384 = [v380 asData];
          [v383 appendData:v384];

          v385 = [v382 asData];
          [v383 appendData:v385];

          v627 = v383;
          v386 = sub_100158A28(a1, 128, 257, v383, 0);
          v641 = v386;
          if ([v386 status] == 36864)
          {
            v625 = v382;
            v387 = objc_opt_new();
            v388 = [v386 response];
            v389 = [v388 NF_asHexString];
            [v387 setObject:v389 forKey:@"SignedResponse"];

            v390 = [v386 response];
            v391 = [NFTLV TLVsWithData:v390];

            v671 = 0u;
            v669 = 0u;
            v670 = 0u;
            v668 = 0u;
            v392 = v391;
            v393 = v387;
            v394 = v392;
            v395 = [v392 countByEnumeratingWithState:&v668 objects:buf count:16];
            if (!v395)
            {
              goto LABEL_361;
            }

            v396 = v395;
            v397 = *v669;
            v655 = v393;
            while (1)
            {
              for (i = 0; i != v396; i = i + 1)
              {
                if (*v669 != v397)
                {
                  objc_enumerationMutation(v394);
                }

                v399 = *(*(&v668 + 1) + 8 * i);
                v400 = [v399 tag];
                if (v400 > 57119)
                {
                  if (v400 == 57137)
                  {
                    v417 = [v399 value];
                    v404 = [v417 NF_asHexString];

                    v418 = [v404 substringWithRange:0, 4];
                    [v393 setObject:v418 forKey:@"jsblSequenceCounter"];
                  }

                  else if (v400 == 57120)
                  {
                    v402 = [NSString alloc];
                    v403 = [v399 value];
                    v404 = [v402 initWithData:v403 encoding:4];

                    [v393 setObject:v404 forKey:@"kPlatformId"];
                  }

                  else
                  {
LABEL_348:
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v405 = NFLogGetLogger();
                    if (v405)
                    {
                      v406 = v405;
                      v407 = object_getClass(a1);
                      v408 = class_isMetaClass(v407);
                      v409 = object_getClassName(a1);
                      v410 = sel_getName("_generateCASDSignatureComet:");
                      v611 = [v399 tag];
                      v582 = v409;
                      v603 = v410;
                      a1 = v650;
                      v393 = v655;
                      v411 = 45;
                      if (v408)
                      {
                        v411 = 43;
                      }

                      v406(3, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v411, v582, v603, 673, v611);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v404 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v404, OS_LOG_TYPE_ERROR))
                    {
                      v412 = object_getClass(a1);
                      if (class_isMetaClass(v412))
                      {
                        v413 = 43;
                      }

                      else
                      {
                        v413 = 45;
                      }

                      v414 = object_getClassName(v650);
                      v415 = sel_getName("_generateCASDSignatureComet:");
                      v416 = [v399 tag];
                      *v687 = 67110146;
                      *&v687[4] = v413;
                      *&v687[8] = 2082;
                      *&v687[10] = v414;
                      a1 = v650;
                      v393 = v655;
                      *&v687[18] = 2082;
                      *&v687[20] = v415;
                      *&v687[28] = 1024;
                      *&v687[30] = 673;
                      *&v687[34] = 1024;
                      *&v687[36] = v416;
                      _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v687, 0x28u);
                    }
                  }

                  continue;
                }

                v401 = v400 == 133 || v400 == 24375;
                if (!v401)
                {
                  goto LABEL_348;
                }
              }

              v396 = [v394 countByEnumeratingWithState:&v668 objects:buf count:16];
              if (!v396)
              {
LABEL_361:

                v33 = v620;
                v5 = v621;
                v419 = v393;
                v420 = v630;
                v421 = v633;
                v422 = obja;
                v382 = v625;
                goto LABEL_381;
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v434 = NFLogGetLogger();
          v5 = v621;
          if (v434)
          {
            v435 = v434;
            v436 = object_getClass(a1);
            v437 = class_isMetaClass(v436);
            v438 = object_getClassName(a1);
            v439 = sel_getName("_generateCASDSignatureComet:");
            v612 = [v386 status];
            v440 = 45;
            if (v437)
            {
              v440 = 43;
            }

            v435(3, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", v440, v438, v439, 641, v612);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v394 = NFSharedLogGetLogger();
          v33 = v620;
          if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
          {
            v441 = object_getClass(a1);
            if (class_isMetaClass(v441))
            {
              v442 = 43;
            }

            else
            {
              v442 = 45;
            }

            v443 = object_getClassName(a1);
            v444 = sel_getName("_generateCASDSignatureComet:");
            v445 = [v641 status];
            *buf = 67110146;
            *&buf[4] = v442;
            *v692 = 2082;
            *&v692[2] = v443;
            *&v692[10] = 2082;
            *&v692[12] = v444;
            *&v692[20] = 1024;
            *&v692[22] = 641;
            *&v692[26] = 1024;
            *&v692[28] = v445;
            _os_log_impl(&_mh_execute_header, v394, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", buf, 0x28u);
          }

          v419 = 0;
          v420 = v630;
          v421 = v633;
          v422 = obja;
LABEL_381:

          if (v419)
          {
            v664 = @"CASDSignedInfo";
            v665 = v419;
            v446 = [NSDictionary dictionaryWithObjects:&v665 forKeys:&v664 count:1];
            [(NSMutableDictionary *)v421 addEntriesFromDictionary:v446];
          }

          v429 = v636;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v423 = NFLogGetLogger();
          if (v423)
          {
            v424 = v423;
            v425 = object_getClass(a1);
            v426 = class_isMetaClass(v425);
            v427 = object_getClassName(a1);
            v604 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            v428 = 45;
            if (v426)
            {
              v428 = 43;
            }

            v424(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v428, v427, v604, 213);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v429 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v429, OS_LOG_TYPE_ERROR))
          {
            v430 = object_getClass(a1);
            if (class_isMetaClass(v430))
            {
              v431 = 43;
            }

            else
            {
              v431 = 45;
            }

            v432 = object_getClassName(a1);
            v433 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            *buf = 67109890;
            *&buf[4] = v431;
            *v692 = 2082;
            *&v692[2] = v432;
            *&v692[10] = 2082;
            *&v692[12] = v433;
            *&v692[20] = 1024;
            *&v692[22] = 213;
            _os_log_impl(&_mh_execute_header, v429, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
          }
        }

        v447 = [a1 handle];
        v448 = [v447 info];
        v449 = [v448 migrationState];

        if ((v449 - 1) > 5)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v451 = NFLogGetLogger();
          if (v451)
          {
            v452 = v451;
            v453 = object_getClass(a1);
            v454 = class_isMetaClass(v453);
            v455 = object_getClassName(a1);
            v605 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            v456 = 45;
            if (v454)
            {
              v456 = 43;
            }

            v452(3, "%c[%{public}s %{public}s]:%i Unexpected AM status", v456, v455, v605, 244);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v457 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v457, OS_LOG_TYPE_ERROR))
          {
            v458 = object_getClass(a1);
            if (class_isMetaClass(v458))
            {
              v459 = 43;
            }

            else
            {
              v459 = 45;
            }

            v460 = object_getClassName(a1);
            v461 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            *buf = 67109890;
            *&buf[4] = v459;
            *v692 = 2082;
            *&v692[2] = v460;
            *&v692[10] = 2082;
            *&v692[12] = v461;
            *&v692[20] = 1024;
            *&v692[22] = 244;
            _os_log_impl(&_mh_execute_header, v457, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected AM status", buf, 0x22u);
          }

          v6 = v624;
        }

        else
        {
          v450 = [NSNumber numberWithInt:dword_1002979B0[(v449 - 1)]];
          v6 = v624;
          [(NSMutableDictionary *)v624 setObject:v450 forKey:@"amStatus"];
        }

        goto LABEL_396;
      }

      v140 = &off_100339A58;
    }

    else
    {
      v222 = objc_opt_new();
      v223 = [NFTLV TLVWithTag:79 value:0];
      v224 = [v223 asData];
      [v222 appendData:v224];

      v225 = [[NSData alloc] initWithBytes:&unk_100297828 length:12];
      v226 = [NFTLV TLVWithTag:92 value:v225];
      v227 = [v226 asData];
      [v222 appendData:v227];

      v616 = v222;
      v228 = sub_1000B3EA0(a1, v222, 0);
      if (v228)
      {
        v229 = objc_opt_new();
        v230 = [[NSData alloc] initWithBytes:&unk_100297834 length:12];
        v690[0] = v230;
        v231 = v228;
        v232 = [[NSData alloc] initWithBytes:&unk_100297840 length:9];
        v690[1] = v232;
        v233 = [[NSData alloc] initWithBytes:&unk_100297849 length:8];
        v690[2] = v233;
        v234 = [[NSData alloc] initWithBytes:&unk_100297851 length:14];
        v690[3] = v234;
        v235 = [[NSData alloc] initWithBytes:&unk_10029785F length:9];
        v690[4] = v235;
        v626 = [NSArray arrayWithObjects:v690 count:5];

        v236 = [[NSData alloc] initWithBytes:&unk_100297868 length:14];
        v689[0] = v236;
        v237 = [[NSData alloc] initWithBytes:&unk_100297876 length:12];
        v689[1] = v237;
        v238 = [[NSData alloc] initWithBytes:&unk_100297882 length:12];
        v689[2] = v238;
        v635 = [NSArray arrayWithObjects:v689 count:3];

        v688 = 0u;
        memset(v687, 0, sizeof(v687));
        v615 = v231;
        obj = v231;
        v239 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        v645 = [obj countByEnumeratingWithState:v687 objects:buf count:16];
        if (v645)
        {
          v640 = **&v687[16];
          v632 = v229;
          do
          {
            v240 = 0;
            do
            {
              if (**&v687[16] != v640)
              {
                objc_enumerationMutation(obj);
              }

              v658 = v240;
              v241 = *(*&v687[8] + 8 * v240);
              if (!a3 || ([*(*&v687[8] + 8 * v240) identifierAsData], v242 = objc_claimAutoreleasedReturnValue(), v243 = objc_msgSend(v626, "containsObject:", v242), v242, (v243 & 1) == 0))
              {
                v244 = objc_opt_new();
                [v229 addObject:v244];
                v245 = [v241 identifier];
                [v244 setObject:v245 forKey:@"appletAid"];

                v246 = [v239[470] numberWithUnsignedInteger:{objc_msgSend(v241, "rawGPState")}];
                [v244 setObject:v246 forKey:@"lifeCycleState"];

                v247 = [v241 identifierAsData];
                v248 = [v635 containsObject:v247];

                if ((v248 & 1) == 0 && ([v241 isContainer] & 1) == 0 && (objc_msgSend(v241, "isProxy") & 1) == 0)
                {
                  v249 = [v241 discretionaryData];
                  v250 = [NFTLV TLVWithTag:204 fromData:v249];
                  v251 = [v250 value];

                  if (v251)
                  {
                    v252 = [v251 NF_asHexString];
                    [v244 setObject:v252 forKey:@"ssdAid"];

                    sub_10018DB1C(a1, v251, v244);
                  }

                  else
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v253 = NFLogGetLogger();
                    if (v253)
                    {
                      v254 = v253;
                      v255 = object_getClass(a1);
                      v653 = class_isMetaClass(v255);
                      v256 = object_getClassName(a1);
                      v257 = sel_getName("_getCRSInfoWithFiltering:");
                      v258 = [v241 identifier];
                      v259 = [v241 discretionaryData];
                      v260 = 45;
                      if (v653)
                      {
                        v260 = 43;
                      }

                      v254(4, "%c[%{public}s %{public}s]:%i Failed to get SSD ID %{public}@: %{public}@", v260, v256, v257, 516, v258, v259);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v261 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
                    {
                      v262 = object_getClass(a1);
                      if (class_isMetaClass(v262))
                      {
                        v263 = 43;
                      }

                      else
                      {
                        v263 = 45;
                      }

                      v264 = object_getClassName(v650);
                      v265 = sel_getName("_getCRSInfoWithFiltering:");
                      v266 = [v241 identifier];
                      v267 = [v241 discretionaryData];
                      *v679 = 67110402;
                      *&v679[4] = v263;
                      a1 = v650;
                      *v680 = 2082;
                      *&v680[2] = v264;
                      *&v680[10] = 2082;
                      *&v680[12] = v265;
                      v681 = 1024;
                      v682 = 516;
                      v683 = 2114;
                      v684 = v266;
                      v685 = 2114;
                      v686 = v267;
                      _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SSD ID %{public}@: %{public}@", v679, 0x36u);
                    }
                  }

                  v239 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                }

                v268 = [v241 discretionaryData];
                v269 = [NFTLV TLVWithTag:254 fromData:v268];

                v654 = v269;
                if (v269)
                {
                  v678 = 0u;
                  memset(md, 0, sizeof(md));
                  v270 = [v269 children];
                  v271 = [v270 countByEnumeratingWithState:md objects:&v668 count:16];
                  if (v271)
                  {
                    v272 = v271;
                    v273 = **&md[16];
                    while (2)
                    {
                      for (j = 0; j != v272; j = j + 1)
                      {
                        if (**&md[16] != v273)
                        {
                          objc_enumerationMutation(v270);
                        }

                        v275 = *(*&md[8] + 8 * j);
                        if ([v275 tag] == 57152)
                        {
                          v276 = [v275 value];
                          v277 = [v276 length];

                          if (v277 == 2)
                          {
                            v291 = [v275 value];
                            v292 = [v291 NF_asHexString];
                            [v244 setObject:v292 forKey:@"extendedFunction"];

                            goto LABEL_248;
                          }
                        }
                      }

                      v272 = [v270 countByEnumeratingWithState:md objects:&v668 count:16];
                      if (v272)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_248:
                    a1 = v650;
                    v239 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                  }
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v278 = NFLogGetLogger();
                  if (v278)
                  {
                    v279 = v278;
                    v280 = object_getClass(a1);
                    v281 = class_isMetaClass(v280);
                    v282 = object_getClassName(a1);
                    v283 = sel_getName("_getCRSInfoWithFiltering:");
                    v284 = [v241 identifier];
                    v285 = 45;
                    if (v281)
                    {
                      v285 = 43;
                    }

                    v279(3, "%c[%{public}s %{public}s]:%i Failed to get extended function information for %{public}@", v285, v282, v283, 531, v284);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v270 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
                  {
                    v286 = object_getClass(a1);
                    if (class_isMetaClass(v286))
                    {
                      v287 = 43;
                    }

                    else
                    {
                      v287 = 45;
                    }

                    v288 = object_getClassName(a1);
                    v289 = sel_getName("_getCRSInfoWithFiltering:");
                    v290 = [v241 identifier];
                    *v679 = 67110146;
                    *&v679[4] = v287;
                    v239 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                    *v680 = 2082;
                    *&v680[2] = v288;
                    *&v680[10] = 2082;
                    *&v680[12] = v289;
                    v681 = 1024;
                    v682 = 531;
                    v683 = 2114;
                    v684 = v290;
                    _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get extended function information for %{public}@", v679, 0x2Cu);
                  }
                }

                v293 = [v241 discretionaryData];

                if (v293)
                {
                  v294 = [v241 discretionaryData];
                  v295 = [v294 NF_asHexString];
                  [v244 setObject:v295 forKey:@"discretionaryData"];
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v296 = NFLogGetLogger();
                  if (v296)
                  {
                    v297 = v296;
                    v298 = object_getClass(a1);
                    v299 = class_isMetaClass(v298);
                    v300 = object_getClassName(a1);
                    v301 = sel_getName("_getCRSInfoWithFiltering:");
                    v302 = [v241 identifier];
                    v303 = 45;
                    if (v299)
                    {
                      v303 = 43;
                    }

                    v297(3, "%c[%{public}s %{public}s]:%i nil discretionary data for %{public}@", v303, v300, v301, 538, v302);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v294 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
                  {
                    v304 = object_getClass(a1);
                    if (class_isMetaClass(v304))
                    {
                      v305 = 43;
                    }

                    else
                    {
                      v305 = 45;
                    }

                    v306 = object_getClassName(a1);
                    v307 = sel_getName("_getCRSInfoWithFiltering:");
                    v308 = [v241 identifier];
                    *v679 = 67110146;
                    *&v679[4] = v305;
                    v239 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                    *v680 = 2082;
                    *&v680[2] = v306;
                    *&v680[10] = 2082;
                    *&v680[12] = v307;
                    v681 = 1024;
                    v682 = 538;
                    v683 = 2114;
                    v684 = v308;
                    _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i nil discretionary data for %{public}@", v679, 0x2Cu);
                  }
                }

                v309 = [v241 groupHeadID];
                if (v309)
                {
                  [v244 setObject:v309 forKey:@"primaryContainer"];
                }

                v310 = [v241 groupMemberIDs];
                if (v310)
                {
                  [v244 setObject:v310 forKey:@"auxilaryContainers"];
                }

                v311 = [v239[470] numberWithBool:{objc_msgSend(v241, "isContainer")}];
                [v244 setObject:v311 forKey:@"containerInstance"];

                v312 = [v239[470] numberWithBool:{objc_msgSend(v241, "isProxy")}];
                [v244 setObject:v312 forKey:@"proxyInstance"];

                v313 = [v241 packageIdentifier];

                if (v313)
                {
                  v314 = [v241 packageIdentifier];
                  [v244 setObject:v314 forKey:@"packageAid"];
                }

                v315 = [v241 moduleIdentifier];

                if (v315)
                {
                  v316 = [v241 moduleIdentifier];
                  [v244 setObject:v316 forKey:@"moduleAid"];
                }

                v317 = [v241 multiSEGroupMemberIDs];
                v318 = [v317 count];

                if (v318)
                {
                  v319 = [v241 multiSEGroupMemberIDs];
                  [v244 setObject:v319 forKey:@"multiSEApplicationGroup"];
                }

                v229 = v632;
              }

              v240 = v658 + 1;
            }

            while (v658 + 1 != v645);
            v645 = [obj countByEnumeratingWithState:v687 objects:buf count:16];
          }

          while (v645);
        }

        v666 = @"containers";
        v667 = v229;
        v140 = [NSDictionary dictionaryWithObjects:&v667 forKeys:&v666 count:1];

        v33 = v620;
        v5 = v621;
        v6 = v624;
        v228 = v615;
        v320 = v616;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v321 = NFLogGetLogger();
        if (v321)
        {
          v322 = v321;
          v323 = object_getClass(a1);
          v324 = class_isMetaClass(v323);
          v325 = object_getClassName(a1);
          v600 = sel_getName("_getCRSInfoWithFiltering:");
          v401 = !v324;
          v228 = 0;
          v326 = 45;
          if (!v401)
          {
            v326 = 43;
          }

          v322(3, "%c[%{public}s %{public}s]:%i Failed to get applications", v326, v325, v600, 472);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v229 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
        {
          v327 = object_getClass(a1);
          v328 = v228;
          if (class_isMetaClass(v327))
          {
            v329 = 43;
          }

          else
          {
            v329 = 45;
          }

          v330 = object_getClassName(a1);
          v331 = sel_getName("_getCRSInfoWithFiltering:");
          *v679 = 67109890;
          *&v679[4] = v329;
          v228 = v328;
          *v680 = 2082;
          *&v680[2] = v330;
          *&v680[10] = 2082;
          *&v680[12] = v331;
          v681 = 1024;
          v682 = 472;
          _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get applications", v679, 0x22u);
        }

        v140 = &off_100339A80;
        v6 = v624;
        v320 = v222;
      }

      if (!v140)
      {
        goto LABEL_287;
      }
    }

    [(NSMutableDictionary *)v6 addEntriesFromDictionary:v140];
    goto LABEL_287;
  }

  v137 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v138 = sub_1001595DC(a1, v137, 0);

  if ((v138 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v171 = NFLogGetLogger();
    if (v171)
    {
      v172 = v171;
      v173 = object_getClass(a1);
      v174 = class_isMetaClass(v173);
      v175 = object_getClassName(a1);
      v596 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      v176 = 45;
      if (v174)
      {
        v176 = 43;
      }

      v578 = v175;
      v6 = v624;
      v172(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v176, v578, v596, 250);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v177 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
    {
      v178 = object_getClass(a1);
      if (class_isMetaClass(v178))
      {
        v179 = 43;
      }

      else
      {
        v179 = 45;
      }

      v180 = object_getClassName(a1);
      v181 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      *buf = 67109890;
      *&buf[4] = v179;
      v6 = v624;
      *v692 = 2082;
      *&v692[2] = v180;
      *&v692[10] = 2082;
      *&v692[12] = v181;
      *&v692[20] = 1024;
      *&v692[22] = 250;
      _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
    }

    v140 = 0;
LABEL_396:
    v121 = v618;
    goto LABEL_397;
  }

  v139 = sub_10018D288(a1, 1);
  if (v139)
  {
    [(NSMutableDictionary *)v6 addEntriesFromDictionary:v139];
  }

  v140 = 0;
LABEL_397:
  if ([(NSMutableDictionary *)v6 count])
  {
    if (!v622)
    {
      v36 = 6;
      if (!v33 || !v121 || !v140)
      {
        goto LABEL_460;
      }

      goto LABEL_459;
    }

    v646 = v140;
    v660 = 0;
    v462 = sub_10009D0D0(a1, &v660);
    v463 = v660;
    v464 = objc_opt_new();
    v465 = v464;
    if (v462)
    {
      [v464 setObject:v462 forKey:@"attackLogDictionary"];
    }

    v466 = objc_opt_new();
    v467 = [a1 handle];
    v468 = [v467 driver];
    v469 = sub_100018244(v468, 1);

    if (!v469)
    {
      v492 = v466;
LABEL_456:

      v6 = v624;
      if (v466)
      {
        [v465 addEntriesFromDictionary:v466];
      }

      [(NSMutableDictionary *)v624 setObject:v465 forKey:@"restrictedMode"];

      v140 = v646;
LABEL_459:
      v560 = v6;
      v36 = 0;
      *a4 = v6;
      goto LABEL_460;
    }

    v470 = [[NSData alloc] initWithBytes:*v469 length:v469[1]];
    NFDataRelease();
    v471 = [NFTLV TLVWithData:v470];
    v656 = v470;
    if ([v471 tag] != 48)
    {
      v649 = v462;
      v493 = v467;
      v494 = v471;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v495 = NFLogGetLogger();
      if (v495)
      {
        v496 = v495;
        v497 = object_getClass(v650);
        v498 = v463;
        v499 = class_isMetaClass(v497);
        v500 = object_getClassName(v650);
        v501 = sel_getName("_getUnlockRequestInfoFrom:");
        v613 = [v494 tag];
        v583 = v500;
        v401 = !v499;
        v463 = v498;
        v502 = 45;
        if (!v401)
        {
          v502 = 43;
        }

        v5 = v621;
        v496(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v502, v583, v501, 703, v613);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v503 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v503, OS_LOG_TYPE_ERROR))
      {
        v504 = object_getClass(v650);
        if (class_isMetaClass(v504))
        {
          v505 = 43;
        }

        else
        {
          v505 = 45;
        }

        v506 = object_getClassName(v650);
        v507 = v463;
        v508 = sel_getName("_getUnlockRequestInfoFrom:");
        v509 = [v494 tag];
        *buf = 67110146;
        *&buf[4] = v505;
        *v692 = 2082;
        *&v692[2] = v506;
        *&v692[10] = 2082;
        *&v692[12] = v508;
        v463 = v507;
        *&v692[20] = 1024;
        *&v692[22] = 703;
        *&v692[26] = 1024;
        *&v692[28] = v509;
        _os_log_impl(&_mh_execute_header, v503, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
      }

      v510 = v466;
      v33 = v620;
      v121 = v618;
      v471 = v494;
      v467 = v493;
      v462 = v649;
      goto LABEL_455;
    }

    v648 = v465;
    v472 = [v471 children];
    v642 = v472;
    if ([v472 count] == 5)
    {
      v473 = [v472 objectAtIndexedSubscript:0];
      v474 = [v473 tag];

      if (v474 == 2)
      {
        v475 = [v472 objectAtIndexedSubscript:0];
        v476 = [v475 valueAsUnsignedLong];

        if (v476 == 2)
        {
          v637 = v463;
          v477 = [v472 objectAtIndexedSubscript:4];
          v478 = [v477 value];
          v479 = [v478 length];

          if (v479 == 24)
          {
            v480 = [v472 objectAtIndexedSubscript:1];
            v481 = [v480 value];
            v659 = [v481 NF_asHexString];

            v482 = [v472 objectAtIndexedSubscript:2];
            v483 = [v482 value];
            v651 = [v483 NF_asHexString];

            v484 = [v472 objectAtIndexedSubscript:3];
            v485 = [v484 value];
            v486 = [v485 NF_asHexString];

            v487 = [v472 objectAtIndexedSubscript:4];
            v488 = [v487 value];
            v489 = [v488 NF_asHexString];

            v5 = v621;
            v490 = [NSNumber numberWithUnsignedInt:2];
            [v466 setObject:v490 forKey:@"version"];

            [v466 setObject:v659 forKey:@"nonce"];
            [v466 setObject:v651 forKey:@"unlockKeyID"];
            [v466 setObject:v486 forKey:@"kPlatformId"];
            [v466 setObject:v489 forKey:@"SEID"];
            v491 = v466;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v562 = NFLogGetLogger();
            if (v562)
            {
              v563 = v562;
              v564 = object_getClass(v650);
              v565 = class_isMetaClass(v564);
              v566 = object_getClassName(v650);
              v609 = sel_getName("_getUnlockRequestInfoFrom:");
              v567 = 45;
              if (v565)
              {
                v567 = 43;
              }

              v563(3, "%c[%{public}s %{public}s]:%i Unexpected data structure", v567, v566, v609, 745);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v568 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v568, OS_LOG_TYPE_ERROR))
            {
              v569 = object_getClass(v650);
              if (class_isMetaClass(v569))
              {
                v570 = 43;
              }

              else
              {
                v570 = 45;
              }

              v571 = object_getClassName(v650);
              v572 = sel_getName("_getUnlockRequestInfoFrom:");
              *buf = 67109890;
              *&buf[4] = v570;
              *v692 = 2082;
              *&v692[2] = v571;
              *&v692[10] = 2082;
              *&v692[12] = v572;
              *&v692[20] = 1024;
              *&v692[22] = 745;
              _os_log_impl(&_mh_execute_header, v568, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected data structure", buf, 0x22u);
            }

            v573 = v466;
          }

          v33 = v620;
          v463 = v637;
          goto LABEL_454;
        }

        v638 = v476;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v548 = NFLogGetLogger();
        if (v548)
        {
          v549 = v548;
          v550 = object_getClass(v650);
          v551 = class_isMetaClass(v550);
          v586 = object_getClassName(v650);
          v608 = sel_getName("_getUnlockRequestInfoFrom:");
          v552 = 45;
          if (v551)
          {
            v552 = 43;
          }

          v549(3, "%c[%{public}s %{public}s]:%i Unsupported version: 0x%x", v552, v586, v608, 721, v638);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v521 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v521, OS_LOG_TYPE_ERROR))
        {
LABEL_453:

          v559 = v466;
          v33 = v620;
LABEL_454:

          v121 = v618;
          v465 = v648;
LABEL_455:

          goto LABEL_456;
        }

        v553 = object_getClass(v650);
        v554 = v471;
        v555 = v463;
        if (class_isMetaClass(v553))
        {
          v556 = 43;
        }

        else
        {
          v556 = 45;
        }

        v557 = object_getClassName(v650);
        v558 = sel_getName("_getUnlockRequestInfoFrom:");
        *buf = 67110146;
        *&buf[4] = v556;
        v463 = v555;
        v471 = v554;
        *v692 = 2082;
        *&v692[2] = v557;
        *&v692[10] = 2082;
        *&v692[12] = v558;
        *&v692[20] = 1024;
        *&v692[22] = 721;
        *&v692[26] = 1024;
        *&v692[28] = v638;
        v528 = "%c[%{public}s %{public}s]:%i Unsupported version: 0x%x";
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v531 = NFLogGetLogger();
        if (v531)
        {
          v532 = v531;
          v533 = v463;
          v534 = object_getClass(v650);
          v535 = class_isMetaClass(v534);
          v536 = object_getClassName(v650);
          v537 = sel_getName("_getUnlockRequestInfoFrom:");
          v614 = [v471 tag];
          v585 = v536;
          v607 = v537;
          v5 = v621;
          v538 = 45;
          if (v535)
          {
            v538 = 43;
          }

          v463 = v533;
          v532(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v538, v585, v607, 715, v614);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v521 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v521, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_453;
        }

        v539 = object_getClass(v650);
        if (class_isMetaClass(v539))
        {
          v540 = 43;
        }

        else
        {
          v540 = 45;
        }

        v541 = object_getClassName(v650);
        v542 = v462;
        v543 = v467;
        v544 = v471;
        v545 = v463;
        v546 = sel_getName("_getUnlockRequestInfoFrom:");
        v547 = [v544 tag];
        *buf = 67110146;
        *&buf[4] = v540;
        *v692 = 2082;
        *&v692[2] = v541;
        *&v692[10] = 2082;
        *&v692[12] = v546;
        v463 = v545;
        v471 = v544;
        v467 = v543;
        v462 = v542;
        *&v692[20] = 1024;
        *&v692[22] = 715;
        *&v692[26] = 1024;
        *&v692[28] = v547;
        v528 = "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x";
      }

      v529 = v521;
      v530 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v511 = NFLogGetLogger();
      if (v511)
      {
        v512 = v511;
        v513 = v462;
        v514 = v467;
        v515 = v471;
        v516 = v463;
        v517 = object_getClass(v650);
        v518 = class_isMetaClass(v517);
        v519 = object_getClassName(v650);
        v606 = sel_getName("_getUnlockRequestInfoFrom:");
        v520 = 45;
        if (v518)
        {
          v520 = 43;
        }

        v584 = v519;
        v463 = v516;
        v471 = v515;
        v467 = v514;
        v462 = v513;
        v512(3, "%c[%{public}s %{public}s]:%i Invalid number of subtags", v520, v584, v606, 710);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v521 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v521, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_453;
      }

      v522 = object_getClass(v650);
      v523 = v471;
      v524 = v463;
      if (class_isMetaClass(v522))
      {
        v525 = 43;
      }

      else
      {
        v525 = 45;
      }

      v526 = object_getClassName(v650);
      v527 = sel_getName("_getUnlockRequestInfoFrom:");
      *buf = 67109890;
      *&buf[4] = v525;
      v463 = v524;
      v471 = v523;
      *v692 = 2082;
      *&v692[2] = v526;
      *&v692[10] = 2082;
      *&v692[12] = v527;
      *&v692[20] = 1024;
      *&v692[22] = 710;
      v528 = "%c[%{public}s %{public}s]:%i Invalid number of subtags";
      v529 = v521;
      v530 = 34;
    }

    _os_log_impl(&_mh_execute_header, v529, OS_LOG_TYPE_ERROR, v528, buf, v530);
    goto LABEL_453;
  }

LABEL_408:
  v36 = 6;
LABEL_460:

LABEL_461:
LABEL_462:

  return v36;
}

BOOL sub_10018AF80(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = [v2 controllerInfo];

    v4 = [v1 handle];
    v5 = [v4 info];
    v6 = [v5 seType];

    if (v6 <= 7)
    {
      if (((1 << v6) & 0xB1) != 0)
      {
        v1 = 0;
LABEL_5:

        return v1;
      }

      if (v6 == 2)
      {
        v8 = [v3 siliconName];
        v9 = [v1 handle];
        v10 = [v9 info];
        v11 = [v10 sequenceCounter];
        v12 = [v11 unsignedIntValue];

        if (v8 >= 7)
        {
          v1 = v12 > 0x630;
        }

        else
        {
          v1 = v12 > 0x505;
        }

        goto LABEL_5;
      }
    }

    v1 = 1;
    goto LABEL_5;
  }

  return v1;
}

id sub_10018B0A0(void *a1, char a2)
{
  if (!a1)
  {
    v38 = 0;
    goto LABEL_43;
  }

  v4 = [a1 handle];
  v5 = [v4 info];
  v6 = [v5 deviceType];

  v72 = a1;
  v70 = a2;
  if (v6 > 99)
  {
    if (v6 != 100 && v6 != 210 && v6 != 200)
    {
      goto LABEL_12;
    }

    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0xF1D;
LABEL_14:
    v11 = v10;
    v69 = v11;

    goto LABEL_18;
  }

  if (v6 == 44)
  {
    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0x326;
    goto LABEL_14;
  }

  if (v6 == 54)
  {
    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0x123;
    goto LABEL_14;
  }

  if (v6 != 55)
  {
LABEL_12:
    v69 = 1;
    goto LABEL_18;
  }

  v69 = 0;
LABEL_18:
  v12 = RBSProcessMonitor_ptr;
  v73 = [[NSData alloc] initWithBytes:&unk_100297834 length:12];
  v114[0] = v73;
  v68 = [[NSData alloc] initWithBytes:&unk_100297840 length:9];
  v114[1] = v68;
  v67 = [[NSData alloc] initWithBytes:&unk_100297849 length:8];
  v114[2] = v67;
  v65 = [[NSData alloc] initWithBytes:&unk_100297851 length:14];
  v114[3] = v65;
  v64 = [[NSData alloc] initWithBytes:&unk_1002978B1 length:10];
  v114[4] = v64;
  v13 = [[NSData alloc] initWithBytes:&unk_1002978BB length:14];
  v114[5] = v13;
  v14 = [[NSData alloc] initWithBytes:&unk_1002978C9 length:12];
  v114[6] = v14;
  v15 = [[NSData alloc] initWithBytes:&unk_1002978D5 length:16];
  v114[7] = v15;
  v16 = [[NSData alloc] initWithBytes:&unk_1002978E5 length:13];
  v114[8] = v16;
  v17 = [[NSData alloc] initWithBytes:&unk_1002978F2 length:12];
  v114[9] = v17;
  v18 = [[NSData alloc] initWithBytes:&unk_1002978FE length:12];
  v114[10] = v18;
  v19 = [[NSData alloc] initWithBytes:&unk_10029790A length:10];
  v114[11] = v19;
  v20 = [[NSData alloc] initWithBytes:&unk_100297914 length:10];
  v114[12] = v20;
  v21 = [[NSData alloc] initWithBytes:&unk_10029785F length:9];
  v114[13] = v21;
  v66 = [NSArray arrayWithObjects:v114 count:14];

  v22 = [[NSData alloc] initWithBytes:&unk_100297868 length:14];
  v113[0] = v22;
  v23 = [[NSData alloc] initWithBytes:&unk_100297876 length:12];
  v113[1] = v23;
  v24 = [[NSData alloc] initWithBytes:&unk_100297882 length:12];
  v113[2] = v24;
  v74 = [NSArray arrayWithObjects:v113 count:3];

  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_100006AEC;
  v99 = sub_10018E310;
  v100 = objc_opt_new();
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_100006AEC;
  v93 = sub_10018E310;
  v94 = objc_opt_new();
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_100006AEC;
  v87 = sub_10018E310;
  v88 = [[NSMutableArray alloc] initWithCapacity:2];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10018E318;
  v76[3] = &unk_10031AAA0;
  if (v69)
  {
    v25 = 11;
  }

  else
  {
    v25 = 10;
  }

  v76[4] = v72;
  v81 = "getStatusProprietaryApplicationsWithFiltering:";
  v82 = v70;
  v26 = v66;
  v77 = v26;
  v78 = &v83;
  v79 = &v89;
  v80 = &v95;
  v27 = sub_10018EE10(v72, 64, &unk_1002978A6, v25, v76);
  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(v72);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v72);
      Name = sel_getName("getStatusProprietaryApplicationsWithFiltering:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", v32, ClassName, Name, 947, v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(v72);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(v72);
      v37 = sel_getName("getStatusProprietaryApplicationsWithFiltering:");
      *buf = 67110146;
      v104 = v35;
      v105 = 2082;
      v106 = v36;
      v107 = 2082;
      v108 = v37;
      v109 = 1024;
      v110 = 947;
      v111 = 2114;
      v112 = v27;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", buf, 0x2Cu);
    }

    v38 = 0;
  }

  else
  {
    v71 = v26;
    v39 = [v96[5] count];
    if (v39)
    {
      v40 = v39;
      for (i = 0; i != v40; ++i)
      {
        v42 = [v96[5] objectAtIndexedSubscript:i];
        v43 = [v42 objectForKeyedSubscript:@"associatedSSD"];
        v44 = [v12[56] NF_dataWithHexString:v43];
        v45 = [objc_alloc(v12[56]) initWithBytes:&unk_100297814 length:8];
        v46 = [v44 isEqualToData:v45];

        v47 = v12[56];
        v48 = [v42 objectForKeyedSubscript:@"appletAid"];
        v49 = [v47 NF_dataWithHexString:v48];
        v50 = [v74 containsObject:v49];

        v51 = [v42 objectForKeyedSubscript:@"containerInstance"];
        v52 = [v51 BOOLValue];

        [v42 objectForKeyedSubscript:@"proxyInstance"];
        v54 = v53 = v12;
        v55 = [v54 BOOLValue];

        v12 = v53;
        if (v43 && (v46 & 1) == 0 && (v50 & 1) == 0 && (v52 & 1) == 0 && (v55 & 1) == 0)
        {
          v56 = [v53[56] NF_dataWithHexString:v43];
          sub_10018DB1C(v72, v56, v42);
        }
      }
    }

    v57 = v90[5];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10018F9C8;
    v75[3] = &unk_10031AAC8;
    v75[4] = &v95;
    v58 = [NSPredicate predicateWithBlock:v75];
    [v57 filterUsingPredicate:v58];

    v59 = v96[5];
    v101[0] = @"containers";
    v101[1] = @"orphanedSSDs";
    v60 = v90[5];
    v102[0] = v59;
    v102[1] = v60;
    v101[2] = @"VASDs";
    v102[2] = v84[5];
    v38 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:3];
    v27 = 0;
    v26 = v71;
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v95, 8);
LABEL_43:

  return v38;
}

uint64_t sub_10018BA74(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) objectForKeyedSubscript:{@"packages", 0}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKeyedSubscript:@"associatedSSD"];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

NSMutableArray *sub_10018BBC4(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v228 = objc_opt_new();
  v229 = v4;
  [v4 objectForKeyedSubscript:@"containers"];
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v6 = v238 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v235 objects:v251 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v236;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v236 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v235 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"appletAid"];
      v13 = [NSData NF_dataWithHexString:v12];

      if ([v13 isEqualToData:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v235 objects:v251 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v28 = [v11 objectForKeyedSubscript:@"moduleAid"];
    v29 = [NSData NF_dataWithHexString:v28];
    v30 = [[NSData alloc] initWithBytes:&unk_100297993 length:16];
    if ([v29 isEqualToData:v30])
    {
    }

    else
    {
      v31 = [[NSData alloc] initWithBytes:&unk_1002979A3 length:12];
      v32 = [v29 isEqualToData:v31];

      if ((v32 & 1) == 0)
      {
        v225 = v28;
        v49 = v29;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v51 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getGetProtocolV4Container:forApplet:");
          v54 = 45;
          if (isMetaClass)
          {
            v54 = 43;
          }

          v51(3, "%c[%{public}s %{public}s]:%i moduleID  %{public}@ does not match MiFare or MOT MID. ", v54, ClassName, Name, 1253, v29);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        v27 = v229;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = object_getClass(a1);
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          v58 = object_getClassName(a1);
          v59 = sel_getName("getGetProtocolV4Container:forApplet:");
          *buf = 67110146;
          v240 = v57;
          v241 = 2082;
          v242 = v58;
          v243 = 2082;
          v244 = v59;
          v245 = 1024;
          v246 = 1253;
          v247 = 2114;
          v29 = v49;
          *v248 = v49;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i moduleID  %{public}@ does not match MiFare or MOT MID. ", buf, 0x2Cu);
          v26 = 0;
          v21 = v228;
        }

        else
        {
          v26 = 0;
          v21 = v228;
        }

        v35 = v55;
        v28 = v225;
        goto LABEL_156;
      }
    }

    v33 = [v11 objectForKeyedSubscript:@"lifeCycleState"];
    v34 = [v33 intValue];

    if (v34 != 15 && v34 != 130)
    {
      v223 = v29;
      v226 = v28;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(a1);
        v63 = class_isMetaClass(v62);
        v200 = object_getClassName(a1);
        v206 = sel_getName("getGetProtocolV4Container:forApplet:");
        v64 = 45;
        if (v63)
        {
          v64 = 43;
        }

        v61(3, "%c[%{public}s %{public}s]:%i lifeCycle  %d is not valid ", v64, v200, v206, 1260, v34);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      v27 = v229;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(a1);
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(a1);
        v69 = sel_getName("getGetProtocolV4Container:forApplet:");
        *buf = 67110146;
        v240 = v67;
        v241 = 2082;
        v242 = v68;
        v243 = 2082;
        v244 = v69;
        v245 = 1024;
        v246 = 1260;
        v247 = 1024;
        *v248 = v34;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i lifeCycle  %d is not valid ", buf, 0x28u);
      }

      v26 = 0;
      v21 = v228;
      v29 = v223;
      v35 = v65;
      v28 = v226;
      goto LABEL_156;
    }

    v35 = objc_opt_new();
    v36 = [v11 objectForKeyedSubscript:@"ssdCounter"];

    if (v36)
    {
      v37 = [v11 objectForKeyedSubscript:@"ssdCounter"];
      [v35 setObject:v37 forKeyedSubscript:@"ssdCounter"];

      v38 = [v11 objectForKeyedSubscript:@"appletAid"];

      if (v38)
      {
        v39 = [v11 objectForKeyedSubscript:@"appletAid"];
        [v35 setObject:v39 forKeyedSubscript:@"appletAid"];

        v234 = 0;
        v40 = sub_100158A6C(a1, v13, &v234);
        v224 = v234;
        v221 = v40;
        v222 = v29;
        if ([v40 status] != 36864)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v94 = NFLogGetLogger();
          if (v94)
          {
            v95 = v94;
            v96 = object_getClass(a1);
            v97 = class_isMetaClass(v96);
            v98 = v28;
            v99 = v35;
            v100 = object_getClassName(a1);
            v101 = sel_getName("getGetProtocolV4Container:forApplet:");
            v214 = [v40 status];
            v201 = v100;
            v102 = 43;
            if (!v97)
            {
              v102 = 45;
            }

            v35 = v99;
            v28 = v98;
            v95(3, "%c[%{public}s %{public}s]:%i Failed to select AID %{public}@: status 0x%04x, error = %{public}@", v102, v201, v101, 1289, v13, v214, v224);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v104 = object_getClass(a1);
            if (class_isMetaClass(v104))
            {
              v105 = 43;
            }

            else
            {
              v105 = 45;
            }

            v106 = object_getClassName(a1);
            v107 = sel_getName("getGetProtocolV4Container:forApplet:");
            v108 = [v40 status];
            *buf = 67110658;
            v240 = v105;
            v241 = 2082;
            v242 = v106;
            v243 = 2082;
            v244 = v107;
            v245 = 1024;
            v246 = 1289;
            v247 = 2114;
            *v248 = v13;
            *&v248[8] = 1024;
            *&v248[10] = v108;
            v249 = 2114;
            v250 = v224;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select AID %{public}@: status 0x%04x, error = %{public}@", buf, 0x3Cu);
            v26 = 0;
            v109 = v103;
            v21 = v228;
            v27 = v229;
            v29 = v222;
            goto LABEL_154;
          }

          v26 = 0;
          v109 = v103;
          v21 = v228;
          v27 = v229;
          v29 = v222;
          goto LABEL_153;
        }

        v217 = v35;
        v41 = [[NSData alloc] initWithBytes:&unk_100297993 length:16];
        v42 = [v29 isEqualToData:v41];

        if (v42)
        {
          v43 = [[NSData alloc] initWithBytes:&unk_1002979AF length:1];
          v233 = v224;
          v44 = sub_100158A28(a1, 128, 0, v43, &v233);
          v218 = v233;

          v219 = v44;
          if (v44 && [v44 status] == 36864)
          {
            v45 = [v44 data];
            v46 = [v45 NF_asHexString];
            v47 = [v46 substringWithRange:{0, 4}];

            if (v47)
            {
              v48 = @"authenticationCounter";
              v35 = v217;
              goto LABEL_86;
            }

            v161 = v29;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v162 = NFLogGetLogger();
            if (v162)
            {
              v163 = v162;
              v164 = object_getClass(a1);
              v165 = class_isMetaClass(v164);
              v166 = object_getClassName(a1);
              v209 = sel_getName("getGetProtocolV4Container:forApplet:");
              v167 = 45;
              if (v165)
              {
                v167 = 43;
              }

              v163(3, "%c[%{public}s %{public}s]:%i Nil auth counter", v167, v166, v209, 1310);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v168 = NFSharedLogGetLogger();
            v27 = v229;
            if (!os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_140;
            }

            v169 = object_getClass(a1);
            if (class_isMetaClass(v169))
            {
              v170 = 43;
            }

            else
            {
              v170 = 45;
            }

            v171 = object_getClassName(a1);
            v172 = sel_getName("getGetProtocolV4Container:forApplet:");
            *buf = 67109890;
            v240 = v170;
            v241 = 2082;
            v242 = v171;
            v243 = 2082;
            v244 = v172;
            v245 = 1024;
            v246 = 1310;
            v173 = "%c[%{public}s %{public}s]:%i Nil auth counter";
LABEL_139:
            _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, v173, buf, 0x22u);
LABEL_140:
            v184 = v168;
            v26 = 0;
            v40 = v219;
            v224 = v218;
            v21 = v228;
            v29 = v161;
            v35 = v217;
            v109 = v184;
            goto LABEL_154;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v120 = NFLogGetLogger();
          if (v120)
          {
            v121 = v120;
            v122 = object_getClass(a1);
            v123 = class_isMetaClass(v122);
            v124 = object_getClassName(a1);
            v125 = sel_getName("getGetProtocolV4Container:forApplet:");
            v212 = [v219 status];
            v126 = 45;
            if (v123)
            {
              v126 = 43;
            }

            v121(3, "%c[%{public}s %{public}s]:%i Failed to execute get auth command: 0x%04x, error = %{public}@", v126, v124, v125, 1301, v212, v218);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFSharedLogGetLogger();
          v27 = v229;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = object_getClass(a1);
            if (class_isMetaClass(v128))
            {
              v129 = 43;
            }

            else
            {
              v129 = 45;
            }

            v130 = object_getClassName(a1);
            v131 = sel_getName("getGetProtocolV4Container:forApplet:");
            v132 = v219;
            v133 = [v219 status];
            *buf = 67110402;
            v240 = v129;
            v241 = 2082;
            v242 = v130;
            v243 = 2082;
            v244 = v131;
            v245 = 1024;
            v246 = 1301;
            v247 = 1024;
            *v248 = v133;
            *&v248[4] = 2114;
            v134 = v218;
            *&v248[6] = v218;
            v135 = "%c[%{public}s %{public}s]:%i Failed to execute get auth command: 0x%04x, error = %{public}@";
LABEL_108:
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, v135, buf, 0x32u);
            v26 = 0;
            v40 = v132;
            v224 = v134;
LABEL_110:
            v21 = v228;
            v29 = v222;
            v109 = v127;
            v35 = v217;
LABEL_154:

            v78 = v224;
            goto LABEL_155;
          }
        }

        else
        {
          v232 = v224;
          v110 = sub_100158334(a1, 128, 241, 0, 0, 0, &v232);
          v218 = v232;

          v219 = v110;
          if (v110 && [v110 status] == 36864)
          {
            v111 = [v110 data];
            v47 = [v111 NF_asHexString];

            v35 = v217;
            if (v47)
            {
              v48 = @"appletSignedState";
LABEL_86:
              [v35 setObject:v47 forKeyedSubscript:v48];

              v112 = [v11 objectForKeyedSubscript:@"ssdAid"];
              v113 = [NSData NF_dataWithHexString:v112];

              v231 = v218;
              v216 = v113;
              v114 = sub_100158A6C(a1, v113, &v231);
              v224 = v231;

              v221 = v114;
              if ([v114 status] == 36864)
              {
                v115 = sub_10018D288(a1, 0);
                v116 = [v115 objectForKeyedSubscript:@"ssdKeyVersionNumber"];
                v27 = v229;
                if ([v116 count])
                {
                  [v116 objectAtIndexedSubscript:0];
                  v118 = v117 = v115;
                  v119 = [[NSString alloc] initWithFormat:@"%02lX", objc_msgSend(v118, "integerValue")];
                  [v217 setObject:v119 forKeyedSubscript:@"kvn"];

                  v35 = v217;
                  v21 = v228;
                  [v228 addObject:v217];
                  v26 = v228;
LABEL_152:
                  v109 = v216;
LABEL_153:
                  v40 = v221;
                  goto LABEL_154;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v185 = NFLogGetLogger();
                if (v185)
                {
                  v186 = v185;
                  v187 = object_getClass(a1);
                  v188 = v115;
                  v189 = class_isMetaClass(v187);
                  v190 = object_getClassName(a1);
                  v211 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v191 = !v189;
                  v115 = v188;
                  v192 = 45;
                  if (!v191)
                  {
                    v192 = 43;
                  }

                  v203 = v190;
                  v35 = v217;
                  v186(3, "%c[%{public}s %{public}s]:%i No KVN found", v192, v203, v211, 1367);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v193 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                {
                  v220 = v115;
                  v194 = object_getClass(a1);
                  if (class_isMetaClass(v194))
                  {
                    v195 = 43;
                  }

                  else
                  {
                    v195 = 45;
                  }

                  v196 = object_getClassName(a1);
                  v197 = sel_getName("getGetProtocolV4Container:forApplet:");
                  *buf = 67109890;
                  v240 = v195;
                  v241 = 2082;
                  v242 = v196;
                  v115 = v220;
                  v243 = 2082;
                  v244 = v197;
                  v245 = 1024;
                  v246 = 1367;
                  _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No KVN found", buf, 0x22u);
                }

                v26 = 0;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v148 = NFLogGetLogger();
                if (v148)
                {
                  v149 = v148;
                  v150 = object_getClass(a1);
                  v151 = class_isMetaClass(v150);
                  v152 = object_getClassName(a1);
                  v153 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v215 = [v114 status];
                  v202 = v152;
                  v154 = 43;
                  if (!v151)
                  {
                    v154 = 45;
                  }

                  v35 = v217;
                  v149(3, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x, error = %{public}@", v154, v202, v153, 1350, v216, v215, v224);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v155 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                {
                  v156 = object_getClass(a1);
                  if (class_isMetaClass(v156))
                  {
                    v157 = 43;
                  }

                  else
                  {
                    v157 = 45;
                  }

                  v158 = object_getClassName(a1);
                  v159 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v160 = [v114 status];
                  *buf = 67110658;
                  v240 = v157;
                  v241 = 2082;
                  v242 = v158;
                  v243 = 2082;
                  v244 = v159;
                  v35 = v217;
                  v245 = 1024;
                  v246 = 1350;
                  v247 = 2114;
                  *v248 = v216;
                  *&v248[8] = 1024;
                  *&v248[10] = v160;
                  v249 = 2114;
                  v250 = v224;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x, error = %{public}@", buf, 0x3Cu);
                }

                v26 = 0;
                v27 = v229;
              }

              v21 = v228;
              v29 = v222;
              goto LABEL_152;
            }

            v161 = v29;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v174 = NFLogGetLogger();
            if (v174)
            {
              v175 = v174;
              v176 = object_getClass(a1);
              v177 = class_isMetaClass(v176);
              v178 = object_getClassName(a1);
              v210 = sel_getName("getGetProtocolV4Container:forApplet:");
              v179 = 45;
              if (v177)
              {
                v179 = 43;
              }

              v175(3, "%c[%{public}s %{public}s]:%i appletSignedState does not exist", v179, v178, v210, 1337);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v168 = NFSharedLogGetLogger();
            v27 = v229;
            if (!os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_140;
            }

            v180 = object_getClass(a1);
            if (class_isMetaClass(v180))
            {
              v181 = 43;
            }

            else
            {
              v181 = 45;
            }

            v182 = object_getClassName(a1);
            v183 = sel_getName("getGetProtocolV4Container:forApplet:");
            *buf = 67109890;
            v240 = v181;
            v241 = 2082;
            v242 = v182;
            v243 = 2082;
            v244 = v183;
            v245 = 1024;
            v246 = 1337;
            v173 = "%c[%{public}s %{public}s]:%i appletSignedState does not exist";
            goto LABEL_139;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v136 = NFLogGetLogger();
          if (v136)
          {
            v137 = v136;
            v138 = object_getClass(a1);
            v139 = class_isMetaClass(v138);
            v140 = object_getClassName(a1);
            v141 = sel_getName("getGetProtocolV4Container:forApplet:");
            v213 = [v219 status];
            v142 = 45;
            if (v139)
            {
              v142 = 43;
            }

            v137(3, "%c[%{public}s %{public}s]:%i Failed to execute get applet signed state command: 0x%04x, error = %{public}@", v142, v140, v141, 1328, v213, v218);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFSharedLogGetLogger();
          v27 = v229;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v143 = object_getClass(a1);
            if (class_isMetaClass(v143))
            {
              v144 = 43;
            }

            else
            {
              v144 = 45;
            }

            v145 = object_getClassName(a1);
            v146 = sel_getName("getGetProtocolV4Container:forApplet:");
            v132 = v219;
            v147 = [v219 status];
            *buf = 67110402;
            v240 = v144;
            v241 = 2082;
            v242 = v145;
            v243 = 2082;
            v244 = v146;
            v245 = 1024;
            v246 = 1328;
            v247 = 1024;
            *v248 = v147;
            *&v248[4] = 2114;
            v134 = v218;
            *&v248[6] = v218;
            v135 = "%c[%{public}s %{public}s]:%i Failed to execute get applet signed state command: 0x%04x, error = %{public}@";
            goto LABEL_108;
          }
        }

        v26 = 0;
        v40 = v219;
        v224 = v218;
        goto LABEL_110;
      }

      v227 = v28;
      v70 = v35;
      v71 = v29;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(a1);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(a1);
        v208 = sel_getName("getGetProtocolV4Container:forApplet:");
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i ContainersAppletAID does not exist in container", v89, v88, v208, 1279);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      v27 = v229;
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v26 = 0;
        v29 = v71;
        v35 = v70;
        v28 = v227;
        v21 = v228;
LABEL_155:

LABEL_156:
        v20 = v6;
        goto LABEL_157;
      }

      v90 = object_getClass(a1);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(a1);
      v93 = sel_getName("getGetProtocolV4Container:forApplet:");
      *buf = 67109890;
      v240 = v91;
      v241 = 2082;
      v242 = v92;
      v243 = 2082;
      v244 = v93;
      v245 = 1024;
      v246 = 1279;
      v83 = "%c[%{public}s %{public}s]:%i ContainersAppletAID does not exist in container";
    }

    else
    {
      v227 = v28;
      v70 = v35;
      v71 = v29;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFLogGetLogger();
      v27 = v229;
      if (v72)
      {
        v73 = v72;
        v74 = object_getClass(a1);
        v75 = class_isMetaClass(v74);
        v76 = object_getClassName(a1);
        v207 = sel_getName("getGetProtocolV4Container:forApplet:");
        v77 = 45;
        if (v75)
        {
          v77 = 43;
        }

        v73(3, "%c[%{public}s %{public}s]:%i SSDCounter does not exist in container", v77, v76, v207, 1271);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      v79 = object_getClass(a1);
      if (class_isMetaClass(v79))
      {
        v80 = 43;
      }

      else
      {
        v80 = 45;
      }

      v81 = object_getClassName(a1);
      v82 = sel_getName("getGetProtocolV4Container:forApplet:");
      *buf = 67109890;
      v240 = v80;
      v241 = 2082;
      v242 = v81;
      v243 = 2082;
      v244 = v82;
      v245 = 1024;
      v246 = 1271;
      v83 = "%c[%{public}s %{public}s]:%i SSDCounter does not exist in container";
    }

    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, v83, buf, 0x22u);
    goto LABEL_72;
  }

LABEL_9:

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(a1);
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(a1);
    v204 = sel_getName("getGetProtocolV4Container:forApplet:");
    v19 = 45;
    if (v17)
    {
      v19 = 43;
    }

    v15(3, "%c[%{public}s %{public}s]:%i No matching whitelisted applet found", v19, v18, v204, 1376);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  v21 = v228;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = object_getClass(a1);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(a1);
    v25 = sel_getName("getGetProtocolV4Container:forApplet:");
    *buf = 67109890;
    v240 = v23;
    v241 = 2082;
    v242 = v24;
    v243 = 2082;
    v244 = v25;
    v245 = 1024;
    v246 = 1376;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No matching whitelisted applet found", buf, 0x22u);
  }

  v26 = 0;
  v27 = v229;
LABEL_157:

  return v26;
}

id sub_10018D288(id *a1, int a2)
{
  v4 = sub_100158AB4(a1, 224);
  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_getKeyInfo:");
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to get key information template", v23, ClassName, Name, 339);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(a1);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67109890;
      v87 = v25;
      v88 = 2082;
      v89 = object_getClassName(a1);
      v90 = 2082;
      v91 = sel_getName("_getKeyInfo:");
      v92 = 1024;
      v93 = 339;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get key information template", buf, 0x22u);
    }

    v17 = 0;
    goto LABEL_26;
  }

  v5 = [NFTLV TLVsWithData:v4];
  if ([v5 count] < 3 || 0xAAAAAAAAAAAAAAABLL * objc_msgSend(v5, "count") > 0x5555555555555555)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(a1);
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(a1);
      v72 = sel_getName("_getKeyInfo:");
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid key set", v11, v10, v72, 348);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v13 = object_getClass(a1);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v87 = v14;
    v88 = 2082;
    v89 = object_getClassName(a1);
    v90 = 2082;
    v91 = sel_getName("_getKeyInfo:");
    v92 = 1024;
    v93 = 348;
    v15 = "%c[%{public}s %{public}s]:%i Invalid key set";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
LABEL_14:

    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (![v5 count])
  {
LABEL_63:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    if (v62)
    {
      v63 = v62;
      v64 = object_getClass(a1);
      v65 = class_isMetaClass(v64);
      v66 = object_getClassName(a1);
      v76 = sel_getName("_getKeyInfo:");
      v67 = 45;
      if (v65)
      {
        v67 = 43;
      }

      v63(3, "%c[%{public}s %{public}s]:%i Failed to get key information template", v67, v66, v76, 385);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v68 = object_getClass(a1);
    if (class_isMetaClass(v68))
    {
      v69 = 43;
    }

    else
    {
      v69 = 45;
    }

    v70 = object_getClassName(a1);
    v71 = sel_getName("_getKeyInfo:");
    *buf = 67109890;
    v87 = v69;
    v88 = 2082;
    v89 = v70;
    v90 = 2082;
    v91 = v71;
    v92 = 1024;
    v93 = 385;
    v15 = "%c[%{public}s %{public}s]:%i Failed to get key information template";
    goto LABEL_13;
  }

  v77 = a2;
  v78 = v4;
  v79 = 0;
  v27 = 0;
  do
  {
    v28 = [v5 objectAtIndexedSubscript:v27];
    v29 = [v5 objectAtIndexedSubscript:v27 + 1];
    v30 = v27 + 2;
    v31 = [v5 objectAtIndexedSubscript:v27 + 2];
    if ([v28 tag] == 192 && objc_msgSend(v29, "tag") == 192 && objc_msgSend(v31, "tag") == 192)
    {
      v81 = 0;
      v80 = 0;
      v32 = [v28 value];
      [v32 getBytes:&v81 + 1 range:{1, 1}];

      v33 = [v29 value];
      [v33 getBytes:&v81 range:{1, 1}];

      v34 = [v31 value];
      [v34 getBytes:&v80 range:{1, 1}];

      if (HIBYTE(v81) == v81 && HIBYTE(v81) == v80)
      {
        if (v79)
        {
          v35 = [NSNumber numberWithUnsignedChar:?];
          v36 = [v79 arrayByAddingObject:v35];

          v79 = v36;
        }

        else
        {
          v59 = [NSArray alloc];
          v35 = [NSNumber numberWithUnsignedChar:HIBYTE(v81)];
          v79 = [v59 initWithObjects:{v35, 0}];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(a1);
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(a1);
          v75 = sel_getName("_getKeyInfo:");
          v54 = 45;
          if (v52)
          {
            v54 = 43;
          }

          v50(3, "%c[%{public}s %{public}s]:%i Inconsistent KVN in keyset", v54, v53, v75, 373);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v55 = object_getClass(a1);
          if (class_isMetaClass(v55))
          {
            v56 = 43;
          }

          else
          {
            v56 = 45;
          }

          v57 = object_getClassName(a1);
          v58 = sel_getName("_getKeyInfo:");
          *buf = 67109890;
          v87 = v56;
          v88 = 2082;
          v89 = v57;
          v90 = 2082;
          v91 = v58;
          v92 = 1024;
          v93 = 373;
          v47 = v35;
          v48 = "%c[%{public}s %{public}s]:%i Inconsistent KVN in keyset";
LABEL_47:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x22u);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(a1);
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(a1);
        v74 = sel_getName("_getKeyInfo:");
        v42 = 45;
        if (v40)
        {
          v42 = 43;
        }

        v38(3, "%c[%{public}s %{public}s]:%i Invalid data format", v42, v41, v74, 360);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(a1);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(a1);
        v46 = sel_getName("_getKeyInfo:");
        *buf = 67109890;
        v87 = v44;
        v88 = 2082;
        v89 = v45;
        v90 = 2082;
        v91 = v46;
        v92 = 1024;
        v93 = 360;
        v47 = v35;
        v48 = "%c[%{public}s %{public}s]:%i Invalid data format";
        goto LABEL_47;
      }
    }

    v27 = v30 + 1;
  }

  while ([v5 count] > v30 + 1);
  v4 = v78;
  v16 = v79;
  if (!v79)
  {
    goto LABEL_63;
  }

  if (v77)
  {
    v84 = @"isdKeyVersionNumber";
    v85 = v79;
    v60 = &v85;
    v61 = &v84;
  }

  else
  {
    v82 = @"ssdKeyVersionNumber";
    v83 = v79;
    v60 = &v83;
    v61 = &v82;
  }

  v17 = [NSDictionary dictionaryWithObjects:v60 forKeys:v61 count:1];
LABEL_15:

LABEL_26:

  return v17;
}

void sub_10018DB1C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100158A6C(a1, v5, 0);
  if ([v7 status] == 36864)
  {
    v8 = sub_100158AB4(a1, 193);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 NF_asHexString];
      [v6 setObject:v10 forKey:@"ssdCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_addEntriesFromSSD:intoApp:");
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i Failed to get sequence counter: %{public}@", v25, ClassName, Name, 1210, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(a1);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        *buf = 67110146;
        v73 = v28;
        v74 = 2082;
        v75 = object_getClassName(a1);
        v76 = 2082;
        v77 = sel_getName("_addEntriesFromSSD:intoApp:");
        v78 = 1024;
        v79 = 1210;
        v80 = 2114;
        v81 = v5;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sequence counter: %{public}@", buf, 0x2Cu);
      }

      v9 = 0;
    }

    v29 = sub_100158F70(a1, 254, 0xDF30u);
    v30 = v29;
    if (v29)
    {
      v31 = [v29 NF_asHexString];
      [v6 setObject:v31 forKey:@"obgk"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(a1);
        v35 = class_isMetaClass(v34);
        v64 = object_getClassName(a1);
        v68 = sel_getName("_addEntriesFromSSD:intoApp:");
        v36 = 45;
        if (v35)
        {
          v36 = 43;
        }

        v33(3, "%c[%{public}s %{public}s]:%i Failed to get OBGK: %{public}@", v36, v64, v68, 1217, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(a1);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(a1);
        v40 = sel_getName("_addEntriesFromSSD:intoApp:");
        *buf = 67110146;
        v73 = v38;
        v74 = 2082;
        v75 = v39;
        v76 = 2082;
        v77 = v40;
        v78 = 1024;
        v79 = 1217;
        v80 = 2114;
        v81 = v5;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get OBGK: %{public}@", buf, 0x2Cu);
      }
    }

    v41 = sub_100158AB4(a1, 32545);

    if (v41)
    {
      v42 = [NFTLV TLVWithTag:147 fromData:v41];
      v43 = [v42 value];

      if (v43)
      {
        v44 = [v43 NF_asHexString];
        [v6 setObject:v44 forKey:@"certSN"];

LABEL_58:
        goto LABEL_59;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(a1);
        v57 = class_isMetaClass(v56);
        v66 = object_getClassName(a1);
        v70 = sel_getName("_addEntriesFromSSD:intoApp:");
        v58 = 45;
        if (v57)
        {
          v58 = 43;
        }

        v55(3, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", v58, v66, v70, 1229, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v59 = object_getClass(a1);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(a1);
      v62 = sel_getName("_addEntriesFromSSD:intoApp:");
      *buf = 67110146;
      v73 = v60;
      v74 = 2082;
      v75 = v61;
      v76 = 2082;
      v77 = v62;
      v78 = 1024;
      v79 = 1229;
      v80 = 2114;
      v81 = v5;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(a1);
        v48 = class_isMetaClass(v47);
        v65 = object_getClassName(a1);
        v69 = sel_getName("_addEntriesFromSSD:intoApp:");
        v49 = 45;
        if (v48)
        {
          v49 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", v49, v65, v69, 1225, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v50 = object_getClass(a1);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(a1);
      v53 = sel_getName("_addEntriesFromSSD:intoApp:");
      *buf = 67110146;
      v73 = v51;
      v74 = 2082;
      v75 = v52;
      v76 = 2082;
      v77 = v53;
      v78 = 1024;
      v79 = 1225;
      v80 = 2114;
      v81 = v5;
    }

    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", buf, 0x2Cu);
    goto LABEL_58;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(a1);
    v14 = class_isMetaClass(v13);
    v15 = object_getClassName(a1);
    v16 = sel_getName("_addEntriesFromSSD:intoApp:");
    v71 = [v7 status];
    v17 = 45;
    if (v14)
    {
      v17 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x", v17, v15, v16, 1196, v5, v71);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = object_getClass(a1);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    *buf = 67110402;
    v73 = v20;
    v74 = 2082;
    v75 = object_getClassName(a1);
    v76 = 2082;
    v77 = sel_getName("_addEntriesFromSSD:intoApp:");
    v78 = 1024;
    v79 = 1196;
    v80 = 2114;
    v81 = v5;
    v82 = 1024;
    v83 = [v7 status];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x", buf, 0x32u);
  }

  if ([v7 status] == 27033)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ssdIsLocked"];
  }

LABEL_59:
}

void sub_10018E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [NFTLV TLVSsWithBytes:a2 length:a3 requireDefiniteEncoding:1];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v114 = 0u;
  v93 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v93)
  {
    v92 = *v112;
    v4 = RBSProcessMonitor_ptr;
    v5 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v96 = a1;
    do
    {
      v6 = 0;
      do
      {
        if (*v112 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v6;
        v7 = *(*(&v111 + 1) + 8 * v6);
        v95 = [v7 childWithTag:79];
        if (!v95)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v30 = Logger;
            Class = object_getClass(*(a1 + 32));
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(*(a1 + 32));
            Name = sel_getName(*(a1 + 72));
            v34 = 45;
            if (isMetaClass)
            {
              v34 = 43;
            }

            v30(3, "%c[%{public}s %{public}s]:%i Missing AID tag", v34, ClassName, Name, 846);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v11 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v35 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v35))
            {
              v36 = 43;
            }

            else
            {
              v36 = 45;
            }

            v37 = object_getClassName(*(a1 + 32));
            v38 = sel_getName(*(a1 + 72));
            *buf = 67109890;
            v123 = v36;
            v124 = 2082;
            v125 = v37;
            v126 = 2082;
            v127 = v38;
            v128 = 1024;
            v129 = 846;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing AID tag", buf, 0x22u);
          }

          goto LABEL_90;
        }

        if (*(a1 + 80) != 1 || (v8 = *(a1 + 40), [v95 value], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8 & 1) == 0))
        {
          v10 = [v7 childWithTag:197];
          v11 = v10;
          if (!v10 || (-[NSObject value](v10, "value"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v13 >= 5))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v14 = NFLogGetLogger();
            if (v14)
            {
              v15 = v14;
              v16 = object_getClass(*(a1 + 32));
              v17 = class_isMetaClass(v16);
              v18 = object_getClassName(*(a1 + 32));
              v19 = sel_getName(*(a1 + 72));
              v20 = [v11 value];
              v89 = [v20 length];
              v21 = 45;
              if (v17)
              {
                v21 = 43;
              }

              v15(3, "%c[%{public}s %{public}s]:%i Missing or too long privilege tag 0xC5 %lu", v21, v18, v19, 860, v89);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v22 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v23))
              {
                v24 = 43;
              }

              else
              {
                v24 = 45;
              }

              v25 = object_getClassName(*(a1 + 32));
              v26 = sel_getName(*(a1 + 72));
              v27 = [v11 value];
              v28 = [v27 length];
              *buf = 67110146;
              v123 = v24;
              v124 = 2082;
              v125 = v25;
              v126 = 2082;
              v127 = v26;
              v128 = 1024;
              v129 = 860;
              v130 = 2048;
              v131 = v28;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing or too long privilege tag 0xC5 %lu", buf, 0x2Cu);
            }

            goto LABEL_89;
          }

          v90 = v11;
          v39 = [v11 valueAsUnsignedLong];
          if ((v39 & 0x800000) != 0)
          {
            if ((~v39 & 0xC10000) != 0)
            {
              if ((v39 & 0x540) == 0)
              {
                v86 = *(*(*(a1 + 56) + 8) + 40);
                v22 = [v95 valueAsHexString];
                [v86 addObject:v22];
                goto LABEL_89;
              }
            }

            else
            {
              v85 = *(*(*(a1 + 48) + 8) + 40);
              v22 = [v95 valueAsHexString];
              [v85 addObject:v22];
LABEL_88:
              v11 = v90;
LABEL_89:
            }

LABEL_90:

            goto LABEL_91;
          }

          v22 = [[NSMutableDictionary alloc] initWithCapacity:18];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v40 = [v7 children];
          v102 = [v40 countByEnumeratingWithState:&v107 objects:v120 count:16];
          if (!v102)
          {
            goto LABEL_85;
          }

          v41 = *v108;
          v98 = v22;
          v100 = v40;
          v101 = *v108;
          while (2)
          {
            v42 = 0;
LABEL_33:
            if (*v108 != v41)
            {
              objc_enumerationMutation(v40);
            }

            v43 = *(*(&v107 + 1) + 8 * v42);
            v44 = [v43 tag];
            if (v44 <= 164)
            {
              if (v44 <= 159)
              {
                if (v44 == 79)
                {
                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"appletAid";
                }

                else
                {
                  if (v44 != 132)
                  {
                    goto LABEL_83;
                  }

                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"moduleAid";
                }

                goto LABEL_81;
              }

              if (v44 == 160)
              {
                v63 = [v43 childWithTag:79];
                v50 = v63;
                if (!v63)
                {
                  v63 = v43;
                }

                v64 = [v63 valueAsHexString];
                [v22 setObject:v64 forKeyedSubscript:@"primaryContainer"];

                goto LABEL_82;
              }

              if (v44 == 164)
              {
                v54 = objc_alloc(v4[61]);
                v55 = [v43 children];
                v56 = [v54 initWithCapacity:{objc_msgSend(v55, "count")}];

                v105 = 0u;
                v106 = 0u;
                v103 = 0u;
                v104 = 0u;
                v57 = [v43 children];
                v58 = [v57 countByEnumeratingWithState:&v103 objects:v119 count:16];
                if (v58)
                {
                  v59 = v58;
                  v60 = *v104;
                  do
                  {
                    for (i = 0; i != v59; i = i + 1)
                    {
                      if (*v104 != v60)
                      {
                        objc_enumerationMutation(v57);
                      }

                      v62 = [*(*(&v103 + 1) + 8 * i) valueAsHexString];
                      [v56 addObject:v62];
                    }

                    v59 = [v57 countByEnumeratingWithState:&v103 objects:v119 count:16];
                  }

                  while (v59);
                }

                v22 = v98;
                [v98 setObject:v56 forKeyedSubscript:@"auxilaryContainers"];

                v40 = v100;
                v41 = v101;
              }
            }

            else
            {
              if (v44 > 203)
              {
                if (v44 == 204)
                {
                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"associatedSSD";
                }

                else
                {
                  if (v44 != 218)
                  {
                    if (v44 == 40816)
                    {
                      v45 = [v43 value];
                      v46 = [v45 length];

                      if (v46)
                      {
                        v47 = v5[470];
                        v48 = [v43 value];
                        v49 = [v47 numberWithUnsignedChar:{*objc_msgSend(v48, "bytes")}];
                        [v22 setObject:v49 forKeyedSubscript:@"lifeCycleState"];
                      }
                    }

                    goto LABEL_83;
                  }

                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"appletPresentmentACL";
                }

LABEL_81:
                [v51 setObject:v52 forKeyedSubscript:v53];
LABEL_82:

                goto LABEL_83;
              }

              if (v44 != 165)
              {
                if (v44 != 196)
                {
                  goto LABEL_83;
                }

                v50 = [v43 valueAsHexString];
                v51 = v22;
                v52 = v50;
                v53 = @"packageAid";
                goto LABEL_81;
              }

              v65 = [v43 valueAsHexString];
              [v22 setObject:v65 forKeyedSubscript:@"discretionaryData"];

              v66 = *(a1 + 32);
              v67 = v43;
              v68 = v22;
              if (v66)
              {
                v69 = [v67 childWithTag:254];
                v70 = [v69 childWithTag:57152];

                if (v70)
                {
                  v71 = [v70 valueAsHexString];
                  [v68 setObject:v71 forKeyedSubscript:@"extendedFunction"];

                  LODWORD(v71) = [v70 valueAsUnsignedShort];
                  v72 = [v5[470] numberWithBool:(v71 >> 2) & 1];
                  [v68 setObject:v72 forKeyedSubscript:@"containerInstance"];

                  v73 = [v5[470] numberWithBool:(v71 >> 3) & 1];
                  [v68 setObject:v73 forKeyedSubscript:@"proxyInstance"];
                }

                v99 = v70;
                v74 = [v67 childWithTag:204];
                v75 = v74;
                if (v74)
                {
                  v76 = [v74 valueAsHexString];
                  [v68 setObject:v76 forKeyedSubscript:@"ssdAid"];
                }

                v77 = [v67 childrenWithTag:221];
                if ([v77 count])
                {
                  v97 = v67;
                  v78 = [objc_alloc(v4[61]) initWithCapacity:{objc_msgSend(v77, "count")}];
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  v79 = v77;
                  v80 = [v79 countByEnumeratingWithState:&v115 objects:buf count:16];
                  if (v80)
                  {
                    v81 = v80;
                    v82 = *v116;
                    do
                    {
                      for (j = 0; j != v81; j = j + 1)
                      {
                        if (*v116 != v82)
                        {
                          objc_enumerationMutation(v79);
                        }

                        v84 = [*(*(&v115 + 1) + 8 * j) valueAsHexString];
                        [v78 addObject:v84];
                      }

                      v81 = [v79 countByEnumeratingWithState:&v115 objects:buf count:16];
                    }

                    while (v81);
                  }

                  [v68 setObject:v78 forKeyedSubscript:@"multiSEApplicationGroup"];
                  a1 = v96;
                  v67 = v97;
                  v4 = RBSProcessMonitor_ptr;
                  v5 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                  v22 = v98;
                }

                v40 = v100;
              }

              v41 = v101;
            }

LABEL_83:
            if (++v42 == v102)
            {
              v102 = [v40 countByEnumeratingWithState:&v107 objects:v120 count:16];
              if (!v102)
              {
LABEL_85:

                [*(*(*(a1 + 64) + 8) + 40) addObject:v22];
                goto LABEL_88;
              }

              continue;
            }

            goto LABEL_33;
          }
        }

LABEL_91:

        v6 = v94 + 1;
      }

      while ((v94 + 1) != v93);
      v87 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
      v93 = v87;
    }

    while (v87);
  }
}

id sub_10018EE10(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v49 = 79;
  v50 = 92;
  v51 = a4;
  v48 = 3;
  if (a4 >= 0x100)
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v64[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v65[0] = v12;
    v65[1] = &off_100332B98;
    v64[1] = @"Line";
    v64[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v65[2] = v13;
    v64[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1111];
    v65[3] = v14;
    v64[4] = NSLocalizedFailureReasonErrorKey;
    v15 = [[NSString alloc] initWithFormat:@"Tag list length too long"];
    v65[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:5];
    v17 = [v10 initWithDomain:v11 code:10 userInfo:v16];

    goto LABEL_20;
  }

  v18 = [NFCommandAPDU buildAPDUHeaderWithClass:128 instruction:175 p1:a2 p2:2 len:(a4 + 4) useExtendedLength:1];
  if (!v18)
  {
    v24 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"No resources"];
    v63[0] = v12;
    v63[1] = &off_100332BB0;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v63[2] = v13;
    v62[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1122];
    v63[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v17 = [v24 initWithDomain:v11 code:34 userInfo:v15];
    goto LABEL_20;
  }

  v19 = v18;
  [v18 appendBytes:&v49 length:4];
  [v19 appendBytes:a3 length:a4];
  v20 = [NFCommandAPDU appendExpectedLength:0 usingExtendedLength:1 toAPDU:v19];
  if (v20)
  {
    v11 = v20;
    v21 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    v22 = [v11 code];
    v60[0] = NSLocalizedDescriptionKey;
    if ([v11 code] > 75)
    {
      v23 = 76;
    }

    else
    {
      v23 = [v11 code];
    }

    v14 = [NSString stringWithUTF8String:off_10031AB10[v23]];
    v61[0] = v14;
    v61[1] = v11;
    v60[1] = NSUnderlyingErrorKey;
    v60[2] = @"Line";
    v61[2] = &off_100332BC8;
    v60[3] = @"Method";
    v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v61[3] = v15;
    v60[4] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1129];
    v61[4] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v17 = [v21 initWithDomain:v13 code:v22 userInfo:v31];

LABEL_19:
    v12 = v19;
    goto LABEL_20;
  }

  v25 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v26 = sub_1001595DC(a1, v25, 0);

  if (v26)
  {
    while (1)
    {
      v47 = 0;
      v13 = sub_1001579EC(a1, v19, 0, &v47);
      v11 = v47;
      if (v11)
      {
        break;
      }

      if (!v13 || [v13 length] <= 1)
      {
        v44 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v54[0] = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:"Command Error"];
        v55[0] = v15;
        v55[1] = &off_100332C10;
        v54[1] = @"Line";
        v54[2] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
        v55[2] = v45;
        v54[3] = NSDebugDescriptionErrorKey;
        v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1145];
        v55[3] = v36;
        v54[4] = NSLocalizedFailureReasonErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"Null or too-short response"];
        v55[4] = v37;
        v38 = v55;
        v39 = v54;
LABEL_27:
        v40 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:5];
        v17 = [v44 initWithDomain:v14 code:16 userInfo:v40];

        v41 = v45;
        goto LABEL_32;
      }

      v27 = [v13 bytes];
      v28 = *&v27[[v13 length] - 2];
      v29 = __rev16(v28);
      if (v29 != 25360 && v29 != 36864)
      {
        v44 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v52[0] = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:"Command Error"];
        v53[0] = v15;
        v53[1] = &off_100332C28;
        v52[1] = @"Line";
        v52[2] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
        v53[2] = v45;
        v52[3] = NSDebugDescriptionErrorKey;
        v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1149];
        v53[3] = v36;
        v52[4] = NSLocalizedFailureReasonErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"error status word 0x%hx", v29];
        v53[4] = v37;
        v38 = v53;
        v39 = v52;
        goto LABEL_27;
      }

      v9[2](v9, [v13 bytes], objc_msgSend(v13, "length") - 2);

      [v19 replaceBytesInRange:3 withBytes:1 length:{&v48, 1}];
      if (v28 != 4195)
      {
        v17 = 0;
        goto LABEL_21;
      }
    }

    v46 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v42 = [v11 code];
    v56[0] = NSLocalizedDescriptionKey;
    if ([v11 code] > 75)
    {
      v43 = 76;
    }

    else
    {
      v43 = [v11 code];
    }

    v15 = [NSString stringWithUTF8String:off_10031AB10[v43]];
    v57[0] = v15;
    v57[1] = v11;
    v56[1] = NSUnderlyingErrorKey;
    v56[2] = @"Line";
    v57[2] = &off_100332BF8;
    v56[3] = @"Method";
    v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v57[3] = v41;
    v56[4] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1142];
    v57[4] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
    v17 = [v46 initWithDomain:v14 code:v42 userInfo:v37];
LABEL_32:

    goto LABEL_19;
  }

  v33 = [NSError alloc];
  v12 = [NSString stringWithUTF8String:"nfcd"];
  v58[0] = NSLocalizedDescriptionKey;
  v13 = [NSString stringWithUTF8String:"Command Error"];
  v59[0] = v13;
  v59[1] = &off_100332BE0;
  v58[1] = @"Line";
  v58[2] = @"Method";
  v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
  v59[2] = v14;
  v58[3] = NSDebugDescriptionErrorKey;
  v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1133];
  v59[3] = v15;
  v58[4] = NSLocalizedFailureReasonErrorKey;
  v34 = [[NSString alloc] initWithFormat:@"Failed to select ISD"];
  v59[4] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
  v17 = [v33 initWithDomain:v12 code:16 userInfo:v35];

  v11 = v19;
LABEL_20:

  v19 = v11;
LABEL_21:

LABEL_22:

  return v17;
}

uint64_t sub_10018F9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKeyedSubscript:{@"associatedSSD", v13}];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

void sub_10018FB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [NFTLV TLVSsWithBytes:a2 length:a3 requireDefiniteEncoding:1];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v106 = 0u;
  v4 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v104;
    v91 = *v104;
    do
    {
      v7 = 0;
      v92 = v5;
      do
      {
        if (*v104 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v103 + 1) + 8 * v7);
        v9 = [v8 childWithTag:79];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 valueAsHexString];
          v97 = v10;
          if (*(a1 + 72) == 1 && (v12 = *(a1 + 40), [v10 value], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend(v12, "containsObject:", v13), v13, v12))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 64));
              v18 = 45;
              if (isMetaClass)
              {
                v18 = 43;
              }

              v15(3, "%c[%{public}s %{public}s]:%i Hiding package AID %{public}@", v18, ClassName, Name, 1035, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v19 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v20))
              {
                v21 = 43;
              }

              else
              {
                v21 = 45;
              }

              v22 = object_getClassName(*(a1 + 32));
              v23 = sel_getName(*(a1 + 64));
              *buf = 67110146;
              v108 = v21;
              v109 = 2082;
              v110 = v22;
              v111 = 2082;
              v112 = v23;
              v113 = 1024;
              v114 = 1035;
              v115 = 2114;
              v116 = v11;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hiding package AID %{public}@", buf, 0x2Cu);
            }
          }

          else
          {
            v98 = v11;
            v94 = v8;
            v24 = [v8 childrenWithTag:132];
            v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v24, "count")}];
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v19 = v24;
            v26 = [v19 countByEnumeratingWithState:&v99 objects:v119 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v100;
LABEL_20:
              v29 = 0;
              while (1)
              {
                if (*v100 != v28)
                {
                  objc_enumerationMutation(v19);
                }

                v30 = *(*(&v99 + 1) + 8 * v29);
                if (*(a1 + 72) == 1)
                {
                  v31 = *(a1 + 48);
                  v32 = [*(*(&v99 + 1) + 8 * v29) value];
                  LODWORD(v31) = [v31 containsObject:v32];

                  if (v31)
                  {
                    break;
                  }
                }

                v33 = [v30 valueAsHexString];
                [v25 addObject:v33];

                if (v27 == ++v29)
                {
                  v27 = [v19 countByEnumeratingWithState:&v99 objects:v119 count:16];
                  if (v27)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_27;
                }
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v44 = NFLogGetLogger();
              if (v44)
              {
                v45 = v44;
                v46 = object_getClass(*(a1 + 32));
                v47 = class_isMetaClass(v46);
                v48 = object_getClassName(*(a1 + 32));
                v49 = sel_getName(*(a1 + 64));
                v50 = [v30 valueAsHexString];
                v51 = 45;
                if (v47)
                {
                  v51 = 43;
                }

                v45(6, "%c[%{public}s %{public}s]:%i Hiding package %{public}@ / module %{public}@", v51, v48, v49, 1044, v98, v50);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v52 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v53))
                {
                  v54 = 43;
                }

                else
                {
                  v54 = 45;
                }

                v55 = object_getClassName(*(a1 + 32));
                v56 = sel_getName(*(a1 + 64));
                v57 = [v30 valueAsHexString];
                *buf = 67110402;
                v108 = v54;
                v109 = 2082;
                v110 = v55;
                v111 = 2082;
                v112 = v56;
                v113 = 1024;
                v114 = 1044;
                v115 = 2114;
                v116 = v98;
                v117 = 2114;
                v118 = v57;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Hiding package %{public}@ / module %{public}@", buf, 0x36u);
              }

              v11 = v98;
              if (*(a1 + 72))
              {
                goto LABEL_76;
              }
            }

            else
            {
LABEL_27:

              v11 = v98;
            }

            v58 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v11, @"packageAid", v25, @"moduleAids", 0}];
            v59 = [v94 childWithTag:206];
            v60 = v59;
            if (v59)
            {
              v61 = [v59 valueAsHexString];
              if (v61)
              {
                [v58 setObject:v61 forKeyedSubscript:@"version"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v62 = NFLogGetLogger();
                if (v62)
                {
                  v63 = v62;
                  v64 = object_getClass(*(a1 + 32));
                  v65 = class_isMetaClass(v64);
                  v85 = object_getClassName(*(a1 + 32));
                  v89 = sel_getName(*(a1 + 64));
                  v66 = 45;
                  if (v65)
                  {
                    v66 = 43;
                  }

                  v63(4, "%c[%{public}s %{public}s]:%i Missing package version info %{public}@", v66, v85, v89, 1064, v98);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v67 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v68))
                  {
                    v69 = 43;
                  }

                  else
                  {
                    v69 = 45;
                  }

                  v70 = object_getClassName(*(a1 + 32));
                  v71 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v108 = v69;
                  v109 = 2082;
                  v110 = v70;
                  v111 = 2082;
                  v112 = v71;
                  v113 = 1024;
                  v114 = 1064;
                  v115 = 2114;
                  v116 = v98;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing package version info %{public}@", buf, 0x2Cu);
                }
              }
            }

            v72 = [v94 childWithTag:204];
            v73 = v72;
            if (v72)
            {
              v74 = [v72 valueAsHexString];
              if (v74)
              {
                [v58 setObject:v74 forKeyedSubscript:@"associatedSSD"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v75 = NFLogGetLogger();
                if (v75)
                {
                  v76 = v75;
                  v77 = object_getClass(*(a1 + 32));
                  v95 = class_isMetaClass(v77);
                  v86 = object_getClassName(*(a1 + 32));
                  v90 = sel_getName(*(a1 + 64));
                  v78 = 45;
                  if (v95)
                  {
                    v78 = 43;
                  }

                  v76(4, "%c[%{public}s %{public}s]:%i Missing associated SSD String info %{public}@", v78, v86, v90, 1075, v98);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v79 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v80 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v80))
                  {
                    v81 = 43;
                  }

                  else
                  {
                    v81 = 45;
                  }

                  v96 = v81;
                  v82 = object_getClassName(*(a1 + 32));
                  v83 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v108 = v96;
                  v109 = 2082;
                  v110 = v82;
                  v111 = 2082;
                  v112 = v83;
                  v113 = 1024;
                  v114 = 1075;
                  v115 = 2114;
                  v116 = v98;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing associated SSD String info %{public}@", buf, 0x2Cu);
                }
              }
            }

            [*(*(*(a1 + 56) + 8) + 40) addObject:v58];

            v11 = v98;
LABEL_76:

            v6 = v91;
            v5 = v92;
          }

          v10 = v97;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFLogGetLogger();
          if (v34)
          {
            v35 = v34;
            v36 = object_getClass(*(a1 + 32));
            v37 = class_isMetaClass(v36);
            v38 = object_getClassName(*(a1 + 32));
            v88 = sel_getName(*(a1 + 64));
            v39 = 45;
            if (v37)
            {
              v39 = 43;
            }

            v35(3, "%c[%{public}s %{public}s]:%i Missing packgeTag?!", v39, v38, v88, 1030);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v11 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v40 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v40))
            {
              v41 = 43;
            }

            else
            {
              v41 = 45;
            }

            v42 = object_getClassName(*(a1 + 32));
            v43 = sel_getName(*(a1 + 64));
            *buf = 67109890;
            v108 = v41;
            v109 = 2082;
            v110 = v42;
            v111 = 2082;
            v112 = v43;
            v113 = 1024;
            v114 = 1030;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing packgeTag?!", buf, 0x22u);
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
    }

    while (v5);
  }
}

id sub_10019093C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = [a2 UID];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 objectForKey:@"type"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1001909EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = [a2 UID];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 objectForKey:@"tagHandle"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pointerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100190BD0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169))
    {
      v7 = 3;
    }

    else
    {
      v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x108004063299CC8uLL);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("connectTag:updatedTag:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Connecting to tag: %{public}@", v13, ClassName, Name, 93, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v38 = v16;
        v39 = 2082;
        v40 = object_getClassName(v6);
        v41 = 2082;
        v42 = sel_getName("connectTag:updatedTag:");
        v43 = 1024;
        v44 = 93;
        v45 = 2114;
        v46 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Connecting to tag: %{public}@", buf, 0x2Cu);
      }

      sub_1001909EC(v6, v5);
      v17 = NFDriverRemoteDevConnect();
      if (v17)
      {
        v18 = v17;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v20 = v19;
          v21 = object_getClass(v6);
          v22 = class_isMetaClass(v21);
          v34 = object_getClassName(v6);
          v36 = sel_getName("connectTag:updatedTag:");
          v23 = 45;
          if (v22)
          {
            v23 = 43;
          }

          v20(3, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", v23, v34, v36, 100, v5);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = object_getClass(v6);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          v27 = object_getClassName(v6);
          v28 = sel_getName("connectTag:updatedTag:");
          *buf = 67110146;
          v38 = v26;
          v39 = 2082;
          v40 = v27;
          v41 = 2082;
          v42 = v28;
          v43 = 1024;
          v44 = 100;
          v45 = 2114;
          v46 = v5;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", buf, 0x2Cu);
        }

        if (v8)
        {
          free(v8);
        }

        switch(v18)
        {
          case 4:
            v7 = 35;
            break;
          case 18:
            v7 = 51;
            break;
          case 23:
            v7 = 64;
            break;
          default:
            v7 = 28;
            break;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = [v6 _refreshTagInfo:v5 update:v8];
        }

        if (v8)
        {
          free(v8);
        }

        v29 = *(v6 + 2);
        *(v6 + 2) = 0;

        if ([v6 _isEMVPolling])
        {
          v30 = dispatch_semaphore_create(0);
          v31 = *(v6 + 2);
          *(v6 + 2) = v30;
        }

        v7 = 0;
      }
    }

    objc_sync_exit(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10019117C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169))
    {
      v7 = 3;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("disconnectTag:tagRemovalDetect:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i disconnecting from tag: %{public}@, tagRemovalDetect=%d", v13, ClassName, Name, 158, v5, a3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110402;
        v47 = v16;
        v48 = 2082;
        v49 = object_getClassName(v6);
        v50 = 2082;
        v51 = sel_getName("disconnectTag:tagRemovalDetect:");
        v52 = 1024;
        v53 = 158;
        v54 = 2114;
        v55 = v5;
        v56 = 1024;
        v57 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i disconnecting from tag: %{public}@, tagRemovalDetect=%d", buf, 0x32u);
      }

      if ((*(v6 + 31) & 0x8000000) != 0 || (sub_1001909EC(v6, v5), v17 = NFDriverRemoteDevDisconnect(), v17 == 19))
      {
        [v6 _cardRemovalDetect:v5];
        sub_1001909EC(v6, v5);
        v17 = NFDriverRemoteDevDisconnect();
      }

      if (!a3 || v17)
      {
        v7 = 0;
        if (v17 && v17 != 6)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v31 = v30;
            v32 = object_getClass(v6);
            v33 = class_isMetaClass(v32);
            v42 = object_getClassName(v6);
            v45 = sel_getName("disconnectTag:tagRemovalDetect:");
            v34 = 45;
            if (v33)
            {
              v34 = 43;
            }

            v31(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", v34, v42, v45, 187, v5);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v35 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = object_getClass(v6);
            if (class_isMetaClass(v36))
            {
              v37 = 43;
            }

            else
            {
              v37 = 45;
            }

            v38 = object_getClassName(v6);
            v39 = sel_getName("disconnectTag:tagRemovalDetect:");
            *buf = 67110146;
            v47 = v37;
            v48 = 2082;
            v49 = v38;
            v50 = 2082;
            v51 = v39;
            v52 = 1024;
            v53 = 187;
            v54 = 2114;
            v55 = v5;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", buf, 0x2Cu);
          }

          if (v17 == 18)
          {
            v7 = 51;
          }

          else
          {
            v7 = 15;
          }
        }
      }

      else
      {
        if (*(v6 + 2))
        {
          if ([v6 _isEMVPolling])
          {
            v18 = dispatch_time(0, 300000000000);
            if (dispatch_semaphore_wait(*(v6 + 2), v18))
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v19 = NFLogGetLogger();
              if (v19)
              {
                v20 = v19;
                v21 = object_getClass(v6);
                v22 = class_isMetaClass(v21);
                v23 = object_getClassName(v6);
                v44 = sel_getName("disconnectTag:tagRemovalDetect:");
                v24 = 45;
                if (v22)
                {
                  v24 = 43;
                }

                v20(3, "%c[%{public}s %{public}s]:%i Timeout on tag remove", v24, v23, v44, 182);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v25 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = object_getClass(v6);
                if (class_isMetaClass(v26))
                {
                  v27 = 43;
                }

                else
                {
                  v27 = 45;
                }

                v28 = object_getClassName(v6);
                v29 = sel_getName("disconnectTag:tagRemovalDetect:");
                *buf = 67109890;
                v47 = v27;
                v48 = 2082;
                v49 = v28;
                v50 = 2082;
                v51 = v29;
                v52 = 1024;
                v53 = 182;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout on tag remove", buf, 0x22u);
              }
            }
          }
        }

        v7 = 0;
      }

      if (a3)
      {
        sub_1001E6EFC(*(v6 + 6), 0);
        if ([*(v6 + 7) readerModeStoppedShouldCooloffRun])
        {
          v40 = sub_10021A4A0(v6, @"Cooloff", 1uLL);
        }
      }
    }

    objc_sync_exit(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001916A4(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a2;
  if (!a1)
  {
    a4 = 0;
    goto LABEL_47;
  }

  v8 = a1;
  objc_sync_enter(v8);
  if (v8[169] != 1)
  {
    sub_1001909EC(v8, v7);
    v18 = NFDriverRemoteDevCheckNdef();
    if (!v18)
    {
      if (a4)
      {
        *a4 = 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v31 = Logger;
        Class = object_getClass(v8);
        if (class_isMetaClass(Class))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        ClassName = object_getClassName(v8);
        Name = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
        if (a3)
        {
          v36 = *(a3 + 16);
          v37 = *(a3 + 17);
          v39 = *a3;
          v38 = a3[1];
        }

        else
        {
          v38 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 0;
        }

        v31(6, "%c[%{public}s %{public}s]:%i read=%d write=%d capacity=%lu, messageSize=%lu tag=%{public}@", v33, ClassName, Name, 242, v36, v37, v38, v39, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v40 = object_getClass(v8);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v8);
        v43 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
        if (a3)
        {
          v44 = *(a3 + 16);
          v45 = *(a3 + 17);
          v47 = *a3;
          v46 = a3[1];
        }

        else
        {
          v46 = 0;
          v44 = 0;
          v45 = 0;
          v47 = 0;
        }

        *buf = 67111170;
        v51 = v41;
        v52 = 2082;
        v53 = v42;
        v54 = 2082;
        v55 = v43;
        v56 = 1024;
        v57 = 242;
        v58 = 1024;
        v59 = v44;
        v60 = 1024;
        v61 = v45;
        v62 = 2048;
        v63 = v46;
        v64 = 2048;
        v65 = v47;
        v66 = 2114;
        v67 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i read=%d write=%d capacity=%lu, messageSize=%lu tag=%{public}@", buf, 0x4Cu);
      }

      a4 = 1;
      goto LABEL_45;
    }

    v19 = v18;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(v8);
      isMetaClass = class_isMetaClass(v22);
      v24 = object_getClassName(v8);
      v49 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", v25, v24, v49, 214);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(v8);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67109890;
      v51 = v28;
      v52 = 2082;
      v53 = object_getClassName(v8);
      v54 = 2082;
      v55 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
      v56 = 1024;
      v57 = 214;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", buf, 0x22u);
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v29 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    if (v19 > 11)
    {
      switch(v19)
      {
        case 12:
          v76[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v77[0] = v11;
          v77[1] = &off_100332C88;
          v76[1] = @"Line";
          v76[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v77[2] = v12;
          v76[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 221];
          v77[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 37;
          goto LABEL_5;
        case 18:
          v74[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"RF Deactivated"];
          v75[0] = v11;
          v75[1] = &off_100332CA0;
          v74[1] = @"Line";
          v74[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v75[2] = v12;
          v74[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 223];
          v75[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 51;
          goto LABEL_5;
        case 23:
          v72[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v73[0] = v11;
          v73[1] = &off_100332CB8;
          v72[1] = @"Line";
          v72[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v73[2] = v12;
          v72[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 225];
          v73[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 64;
          goto LABEL_5;
      }
    }

    else
    {
      switch(v19)
      {
        case 4:
          v70[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"SE not available"];
          v71[0] = v11;
          v71[1] = &off_100332CD0;
          v70[1] = @"Line";
          v70[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v71[2] = v12;
          v70[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 227];
          v71[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 35;
          goto LABEL_5;
        case 5:
          v78[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v79[0] = v11;
          v79[1] = &off_100332C70;
          v78[1] = @"Line";
          v78[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v79[2] = v12;
          v78[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 219];
          v79[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 10;
          goto LABEL_5;
        case 6:
          v80[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Tag Not Found"];
          v81[0] = v11;
          v81[1] = &off_100332C58;
          v80[1] = @"Line";
          v80[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v81[2] = v12;
          v80[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 217];
          v81[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:4];
          v15 = v29;
          v16 = v10;
          v17 = 28;
          goto LABEL_5;
      }
    }

    v68[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Stack Error"];
    v69[0] = v11;
    v69[1] = &off_100332CE8;
    v68[1] = @"Line";
    v68[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
    v69[2] = v12;
    v68[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 229];
    v69[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
    v15 = v29;
    v16 = v10;
    v17 = 15;
    goto LABEL_5;
  }

  if (a4)
  {
    v9 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v82[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Aborted"];
    v83[0] = v11;
    v83[1] = &off_100332C40;
    v82[1] = @"Line";
    v82[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
    v83[2] = v12;
    v82[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 208];
    v83[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:4];
    v15 = v9;
    v16 = v10;
    v17 = 3;
LABEL_5:
    *a4 = [v15 initWithDomain:v16 code:v17 userInfo:v14];

    a4 = 0;
LABEL_45:
  }

LABEL_46:
  objc_sync_exit(v8);

LABEL_47:
  return a4;
}

uint64_t sub_100192220(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    a3 = 0;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (v6[169] == 1)
    {
      if (!a3)
      {
LABEL_40:
        objc_sync_exit(v6);
        goto LABEL_41;
      }

      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v67[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Aborted"];
      v68[0] = v9;
      v68[1] = &off_100332D18;
      v67[1] = @"Line";
      v67[2] = @"Method";
      v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
      v68[2] = v10;
      v67[3] = NSDebugDescriptionErrorKey;
      v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 258];
      v68[3] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:4];
      *a3 = [v7 initWithDomain:v8 code:3 userInfo:v12];
    }

    else
    {
      v66 = 0;
      memset(buf, 0, sizeof(buf));
      sub_1001909EC(v6, v5);
      MiFareInfo = NFDriverRemoteDevGetMiFareInfo();
      if (!MiFareInfo)
      {
        if ((*buf - 1) > 4)
        {
          a3 = 9;
        }

        else
        {
          a3 = dword_1002979C8[*buf - 1];
        }

        goto LABEL_40;
      }

      v28 = MiFareInfo;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v30 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("queryMifareTagCapability:error:");
        v34 = 45;
        if (isMetaClass)
        {
          v34 = 43;
        }

        v30(3, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v34, ClassName, Name, 265);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = object_getClass(v6);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        *v57 = 67109890;
        v58 = v37;
        v59 = 2082;
        v60 = object_getClassName(v6);
        v61 = 2082;
        v62 = sel_getName("queryMifareTagCapability:error:");
        v63 = 1024;
        v64 = 265;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v57, 0x22u);
      }

      if (!a3)
      {
        goto LABEL_40;
      }

      v38 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      switch(v28)
      {
        case 4:
          v51[0] = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithUTF8String:"SE not available"];
          v52[0] = v39;
          v52[1] = &off_100332D60;
          v51[1] = @"Line";
          v51[2] = @"Method";
          v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v52[2] = v40;
          v51[3] = NSDebugDescriptionErrorKey;
          v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 272];
          v52[3] = v41;
          v42 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
          v43 = v38;
          v44 = v8;
          v45 = 35;
          break;
        case 23:
          v53[0] = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v54[0] = v39;
          v54[1] = &off_100332D48;
          v53[1] = @"Line";
          v53[2] = @"Method";
          v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v54[2] = v40;
          v53[3] = NSDebugDescriptionErrorKey;
          v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 270];
          v54[3] = v41;
          v42 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
          v43 = v38;
          v44 = v8;
          v45 = 64;
          break;
        case 18:
          v55[0] = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithUTF8String:"RF Deactivated"];
          v56[0] = v39;
          v56[1] = &off_100332D30;
          v55[1] = @"Line";
          v55[2] = @"Method";
          v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v56[2] = v40;
          v55[3] = NSDebugDescriptionErrorKey;
          v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 268];
          v56[3] = v41;
          v42 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
          v43 = v38;
          v44 = v8;
          v45 = 51;
          break;
        default:
          v49[0] = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithUTF8String:"Stack Error"];
          v50[0] = v39;
          v50[1] = &off_100332D78;
          v49[1] = @"Line";
          v49[2] = @"Method";
          v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v50[2] = v40;
          v49[3] = NSDebugDescriptionErrorKey;
          v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 274];
          v50[3] = v41;
          v42 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
          v43 = v38;
          v44 = v8;
          v45 = 15;
          break;
      }

      *a3 = [v43 initWithDomain:v44 code:v45 userInfo:v42];
    }

    a3 = 0;
    goto LABEL_40;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(a1);
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(a1);
    v47 = sel_getName("queryMifareTagCapability:error:");
    v18 = 45;
    if (v16)
    {
      v18 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Invalid tag parameter", v18, v17, v47, 251);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = object_getClass(a1);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v21;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(a1);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName("queryMifareTagCapability:error:");
    *&buf[28] = 1024;
    *&buf[30] = 251;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag parameter", buf, 0x22u);
  }

  if (a3)
  {
    v22 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v69[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v70[0] = v23;
    v70[1] = &off_100332D00;
    v69[1] = @"Line";
    v69[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
    v70[2] = v24;
    v69[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 252];
    v70[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
    *a3 = [v22 initWithDomain:v6 code:10 userInfo:v26];

    a3 = 0;
LABEL_41:
  }

LABEL_42:

  return a3;
}

void *sub_100192C04(void *a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = a1;
    objc_sync_enter(v8);
    if (v8[169] == 1)
    {
      if (!a4)
      {
LABEL_34:
        objc_sync_exit(v8);

        goto LABEL_35;
      }

      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v114[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Aborted"];
      v115[0] = v11;
      v115[1] = &off_100332D90;
      v114[1] = @"Line";
      v114[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v115[2] = v12;
      v114[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 307];
      v115[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:4];
      v15 = v9;
      v16 = v10;
      v17 = 3;
      goto LABEL_32;
    }

    if (a3 > 0x8000)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(v8);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v8);
        Name = sel_getName("readNdefDataFromTag:messageSize:error:");
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(5, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", v23, ClassName, Name, 313);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = object_getClass(v8);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67109890;
        v99 = v26;
        v100 = 2082;
        v101 = object_getClassName(v8);
        v102 = 2082;
        v103 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v104 = 1024;
        v105 = 313;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", buf, 0x22u);
      }

      if (!a4)
      {
        goto LABEL_34;
      }

      v27 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v112[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"NDEF message size is over the limit"];
      v113[0] = v11;
      v113[1] = &off_100332DA8;
      v112[1] = @"Line";
      v112[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v113[2] = v12;
      v112[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 314];
      v113[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
      v15 = v27;
      v16 = v10;
      v17 = 43;
      goto LABEL_32;
    }

    if (!a3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v30 = v29;
        v31 = object_getClass(v8);
        v32 = class_isMetaClass(v31);
        v33 = object_getClassName(v8);
        v76 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v34 = 45;
        if (v32)
        {
          v34 = 43;
        }

        v30(5, "%c[%{public}s %{public}s]:%i zero-length message", v34, v33, v76, 317);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = object_getClass(v8);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        *buf = 67109890;
        v99 = v37;
        v100 = 2082;
        v101 = object_getClassName(v8);
        v102 = 2082;
        v103 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v104 = 1024;
        v105 = 317;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (!a4)
      {
        goto LABEL_34;
      }

      v38 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v110[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
      v111[0] = v11;
      v111[1] = &off_100332DC0;
      v110[1] = @"Line";
      v110[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v111[2] = v12;
      v110[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 318];
      v111[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:4];
      v15 = v38;
      v16 = v10;
      v17 = 49;
      goto LABEL_32;
    }

    if (a4)
    {
      *a4 = 0;
      if (!NFDataCreateWithLength())
      {
        v28 = [NSError alloc];
        v10 = [NSString stringWithUTF8String:"nfcd"];
        v80[0] = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:"No resources"];
        v81[0] = v11;
        v81[1] = &off_100332E98;
        v80[1] = @"Line";
        v80[2] = @"Method";
        v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
        v81[2] = v12;
        v80[3] = NSDebugDescriptionErrorKey;
        v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 360];
        v81[3] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:4];
        v15 = v28;
        v16 = v10;
        v17 = 34;
LABEL_32:
        *a4 = [v15 initWithDomain:v16 code:v17 userInfo:v14];

LABEL_33:
        a4 = 0;
        goto LABEL_34;
      }
    }

    else if (!NFDataCreateWithLength())
    {
      goto LABEL_33;
    }

    sub_1001909EC(v8, v7);
    Ndef = NFDriverRemoteDevReadNdef();
    if (!Ndef)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(v8);
        v63 = class_isMetaClass(v62);
        v64 = object_getClassName(v8);
        v78 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v65 = 45;
        if (v63)
        {
          v65 = 43;
        }

        v61(5, "%c[%{public}s %{public}s]:%i zero-length message", v65, v64, v78, 352);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = object_getClass(v8);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        *buf = 67109890;
        v99 = v68;
        v100 = 2082;
        v101 = object_getClassName(v8);
        v102 = 2082;
        v103 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v104 = 1024;
        v105 = 352;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (a4)
      {
        v69 = [NSError alloc];
        v70 = [NSString stringWithUTF8String:"nfcd"];
        v82[0] = NSLocalizedDescriptionKey;
        v71 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
        v83[0] = v71;
        v83[1] = &off_100332E80;
        v82[1] = @"Line";
        v82[2] = @"Method";
        v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
        v83[2] = v72;
        v82[3] = NSDebugDescriptionErrorKey;
        v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 353];
        v83[3] = v73;
        v74 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:4];
        *a4 = [v69 initWithDomain:v70 code:49 userInfo:v74];

        a4 = 0;
      }

      goto LABEL_78;
    }

    v41 = Ndef;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(v8);
      v45 = class_isMetaClass(v44);
      v46 = object_getClassName(v8);
      v77 = sel_getName("readNdefDataFromTag:messageSize:error:");
      v47 = 45;
      if (v45)
      {
        v47 = 43;
      }

      v43(3, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", v47, v46, v77, 331, v7, v41);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = object_getClass(v8);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      *buf = 67110402;
      v99 = v50;
      v100 = 2082;
      v101 = object_getClassName(v8);
      v102 = 2082;
      v103 = sel_getName("readNdefDataFromTag:messageSize:error:");
      v104 = 1024;
      v105 = 331;
      v106 = 2114;
      v107 = v7;
      v108 = 1024;
      v109 = v41;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", buf, 0x32u);
    }

    if (!a4)
    {
LABEL_78:
      NFDataRelease();
      goto LABEL_34;
    }

    v51 = [NSError alloc];
    v52 = [NSString stringWithUTF8String:"nfcd"];
    v79 = v51;
    if (v41 > 11)
    {
      switch(v41)
      {
        case 0xC:
          v92[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v93[0] = v53;
          v93[1] = &off_100332E08;
          v92[1] = @"Line";
          v92[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v93[2] = v54;
          v92[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 338];
          v93[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 37;
          goto LABEL_77;
        case 0x12:
          v90[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"RF Deactivated"];
          v91[0] = v53;
          v91[1] = &off_100332E20;
          v90[1] = @"Line";
          v90[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v91[2] = v54;
          v90[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 340];
          v91[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 51;
          goto LABEL_77;
        case 0x17:
          v88[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v89[0] = v53;
          v89[1] = &off_100332E38;
          v88[1] = @"Line";
          v88[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v89[2] = v54;
          v88[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 342];
          v89[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 64;
          goto LABEL_77;
      }
    }

    else
    {
      switch(v41)
      {
        case 4:
          v86[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"SE not available"];
          v87[0] = v53;
          v87[1] = &off_100332E50;
          v86[1] = @"Line";
          v86[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v87[2] = v54;
          v86[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 344];
          v87[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 35;
          goto LABEL_77;
        case 5:
          v94[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v95[0] = v53;
          v95[1] = &off_100332DF0;
          v94[1] = @"Line";
          v94[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v95[2] = v54;
          v94[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 336];
          v95[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 10;
          goto LABEL_77;
        case 6:
          v96[0] = NSLocalizedDescriptionKey;
          v53 = [NSString stringWithUTF8String:"Connection Closed"];
          v97[0] = v53;
          v97[1] = &off_100332DD8;
          v96[1] = @"Line";
          v96[2] = @"Method";
          v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v97[2] = v54;
          v96[3] = NSDebugDescriptionErrorKey;
          v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 334];
          v97[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:4];
          v57 = v79;
          v58 = v52;
          v59 = 21;
LABEL_77:
          *a4 = [v57 initWithDomain:v58 code:v59 userInfo:v56];

          a4 = 0;
          goto LABEL_78;
      }
    }

    v84[0] = NSLocalizedDescriptionKey;
    v53 = [NSString stringWithUTF8String:"Stack Error"];
    v85[0] = v53;
    v85[1] = &off_100332E68;
    v84[1] = @"Line";
    v84[2] = @"Method";
    v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
    v85[2] = v54;
    v84[3] = NSDebugDescriptionErrorKey;
    v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 346];
    v85[3] = v55;
    v56 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
    v57 = v79;
    v58 = v52;
    v59 = 15;
    goto LABEL_77;
  }

  a4 = 0;
LABEL_35:

  return a4;
}

id sub_100193E90(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_100193EC8(a1, a2, 0x8000u, a3);
    v3 = vars8;
  }

  return a1;
}

id sub_100193EC8(void *a1, void *a2, unsigned int a3, void *a4)
{
  if (a1)
  {
    v4 = sub_100192C04(a1, a2, a3, a4);
    if (v4)
    {
      v5 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100193F64(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_47;
  }

  v10 = a1;
  objc_sync_enter(v10);
  if (v10[169] != 1)
  {
    v12 = [v8 asData];
    [v12 bytes];
    [v12 length];
    v17 = NFDataCreateWithBytesNoCopy();
    v47 = v9;
    if (a5 && !v17)
    {
      v18 = [NSError alloc];
      v13 = [NSString stringWithUTF8String:"nfcd"];
      v76[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"No resources"];
      v77[0] = v19;
      v77[1] = &off_100332EC8;
      v76[1] = @"Line";
      v76[2] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
      v77[2] = v20;
      v76[3] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 400];
      v77[3] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:4];
      *a5 = [v18 initWithDomain:v13 code:34 userInfo:v22];

      goto LABEL_8;
    }

    sub_1001909EC(v10, v9);
    v24 = NFDriverRemoteDevWriteNdef();
    v23 = v24 == 0;
    if (!v24)
    {
      if (a5)
      {
        *a5 = 0;
      }

      goto LABEL_44;
    }

    v25 = v24;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(v10);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v10);
      Name = sel_getName("writeNdefData:toTag:nLengthOptimization:error:");
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Failed to write NDEF data to tag %{public}@", v30, ClassName, Name, 406, v47);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(v10);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67110146;
      v67 = v33;
      v68 = 2082;
      v69 = object_getClassName(v10);
      v70 = 2082;
      v71 = sel_getName("writeNdefData:toTag:nLengthOptimization:error:");
      v72 = 1024;
      v73 = 406;
      v74 = 2114;
      v75 = v47;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to write NDEF data to tag %{public}@", buf, 0x2Cu);
    }

    v23 = v23;
    if (!a5)
    {
LABEL_44:
      NFDataRelease();
      goto LABEL_45;
    }

    v34 = [NSError alloc];
    v35 = [NSString stringWithUTF8String:"nfcd"];
    v46 = v34;
    if (v25 > 11)
    {
      if (v25 > 17)
      {
        if (v25 == 18)
        {
          v54[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"RF Deactivated"];
          v55[0] = v45;
          v55[1] = &off_100332F58;
          v54[1] = @"Line";
          v54[2] = @"Method";
          v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v55[2] = v36;
          v54[3] = NSDebugDescriptionErrorKey;
          v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 420];
          v55[3] = v37;
          v38 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
          v39 = v46;
          v40 = v35;
          v41 = 51;
          goto LABEL_43;
        }

        if (v25 == 23)
        {
          v52[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v53[0] = v45;
          v53[1] = &off_100332F70;
          v52[1] = @"Line";
          v52[2] = @"Method";
          v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v53[2] = v36;
          v52[3] = NSDebugDescriptionErrorKey;
          v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 422];
          v53[3] = v37;
          v38 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
          v39 = v46;
          v40 = v35;
          v41 = 64;
          goto LABEL_43;
        }
      }

      else
      {
        if (v25 == 12)
        {
          v60[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v61[0] = v45;
          v61[1] = &off_100332F10;
          v60[1] = @"Line";
          v60[2] = @"Method";
          v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v61[2] = v36;
          v60[3] = NSDebugDescriptionErrorKey;
          v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 414];
          v61[3] = v37;
          v38 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
          v39 = v46;
          v40 = v35;
          v41 = 37;
          goto LABEL_43;
        }

        if (v25 == 15)
        {
          v58[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"NDEF message size is over the limit"];
          v59[0] = v45;
          v59[1] = &off_100332F28;
          v58[1] = @"Line";
          v58[2] = @"Method";
          v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v59[2] = v36;
          v58[3] = NSDebugDescriptionErrorKey;
          v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 416];
          v59[3] = v37;
          v38 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
          v39 = v46;
          v40 = v35;
          v41 = 43;
          goto LABEL_43;
        }
      }
    }

    else if (v25 > 4)
    {
      if (v25 == 5)
      {
        v62[0] = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v63[0] = v45;
        v63[1] = &off_100332EF8;
        v62[1] = @"Line";
        v62[2] = @"Method";
        v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v63[2] = v36;
        v62[3] = NSDebugDescriptionErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 412];
        v63[3] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
        v39 = v46;
        v40 = v35;
        v41 = 10;
        goto LABEL_43;
      }

      if (v25 == 6)
      {
        v64[0] = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"Connection Closed"];
        v65[0] = v45;
        v65[1] = &off_100332EE0;
        v64[1] = @"Line";
        v64[2] = @"Method";
        v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v65[2] = v36;
        v64[3] = NSDebugDescriptionErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 410];
        v65[3] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:4];
        v39 = v46;
        v40 = v35;
        v41 = 21;
        goto LABEL_43;
      }
    }

    else
    {
      if (v25 == 3)
      {
        v56[0] = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"No resources"];
        v57[0] = v45;
        v57[1] = &off_100332F40;
        v56[1] = @"Line";
        v56[2] = @"Method";
        v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v57[2] = v36;
        v56[3] = NSDebugDescriptionErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 418];
        v57[3] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
        v39 = v46;
        v40 = v35;
        v41 = 34;
        goto LABEL_43;
      }

      if (v25 == 4)
      {
        v50[0] = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"SE not available"];
        v51[0] = v45;
        v51[1] = &off_100332F88;
        v50[1] = @"Line";
        v50[2] = @"Method";
        v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v51[2] = v36;
        v50[3] = NSDebugDescriptionErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 424];
        v51[3] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
        v39 = v46;
        v40 = v35;
        v41 = 35;
LABEL_43:
        *a5 = [v39 initWithDomain:v40 code:v41 userInfo:v38];

        goto LABEL_44;
      }
    }

    v48[0] = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Stack Error"];
    v49[0] = v45;
    v49[1] = &off_100332FA0;
    v48[1] = @"Line";
    v48[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
    v49[2] = v36;
    v48[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 426];
    v49[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
    v39 = v46;
    v40 = v35;
    v41 = 15;
    goto LABEL_43;
  }

  if (a5)
  {
    v47 = v9;
    v11 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v78[0] = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:"Aborted"];
    v79[0] = v13;
    v79[1] = &off_100332EB0;
    v78[1] = @"Line";
    v78[2] = @"Method";
    v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
    v79[2] = v14;
    v78[3] = NSDebugDescriptionErrorKey;
    v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 391];
    v79[3] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
    *a5 = [v11 initWithDomain:v12 code:3 userInfo:v16];

LABEL_8:
    v23 = 0;
LABEL_45:

    v9 = v47;
    goto LABEL_46;
  }

  v23 = 0;
LABEL_46:
  objc_sync_exit(v10);

LABEL_47:
  return v23;
}

BOOL sub_100194D54(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v6 = a1;
  objc_sync_enter(v6);
  if (v6[169] != 1)
  {
    sub_1001909EC(v6, v5);
    v18 = NFDriverRemoteDevWriteLockNdef();
    v16 = v18 == 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    v19 = v18;
    if (!v18)
    {
      goto LABEL_7;
    }

    v20 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    if (v19 > 11)
    {
      if (v19 == 12)
      {
        v27[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
        v28[0] = v9;
        v28[1] = &off_100332FE8;
        v27[1] = @"Line";
        v27[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v28[2] = v10;
        v27[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 453];
        v28[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
        v13 = v20;
        v14 = v8;
        v15 = 37;
        goto LABEL_5;
      }

      if (v19 == 23)
      {
        v25[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
        v26[0] = v9;
        v26[1] = &off_100333000;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v26[2] = v10;
        v25[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 455];
        v26[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
        v13 = v20;
        v14 = v8;
        v15 = 64;
        goto LABEL_5;
      }
    }

    else
    {
      if (v19 == 4)
      {
        v23[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"SE not available"];
        v24[0] = v9;
        v24[1] = &off_100333018;
        v23[1] = @"Line";
        v23[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v24[2] = v10;
        v23[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 457];
        v24[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
        v13 = v20;
        v14 = v8;
        v15 = 35;
        goto LABEL_5;
      }

      if (v19 == 6)
      {
        v29[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Connection Closed"];
        v30[0] = v9;
        v30[1] = &off_100332FD0;
        v29[1] = @"Line";
        v29[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v30[2] = v10;
        v29[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 451];
        v30[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
        v13 = v20;
        v14 = v8;
        v15 = 21;
        goto LABEL_5;
      }
    }

    v21[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Stack Error"];
    v22[0] = v9;
    v22[1] = &off_100333030;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
    v22[2] = v10;
    v21[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 459];
    v22[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
    v13 = v20;
    v14 = v8;
    v15 = 15;
    goto LABEL_5;
  }

  if (a3)
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Aborted"];
    v32[0] = v9;
    v32[1] = &off_100332FB8;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
    v32[2] = v10;
    v31[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 443];
    v32[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v13 = v7;
    v14 = v8;
    v15 = 3;
LABEL_5:
    *a3 = [v13 initWithDomain:v14 code:v15 userInfo:v12];
  }

  v16 = 0;
LABEL_7:
  objc_sync_exit(v6);

LABEL_8:
  return v16;
}

uint64_t sub_100195444(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = a1;
  objc_sync_enter(v4);
  if ((v4[169] & 1) == 0)
  {
    sub_1001909EC(v4, v3);
    v7 = NFDriverRemoteDevCheckPresence();
    if (v7 > 17)
    {
      if (v7 == 18)
      {
        v5 = 51;
        goto LABEL_4;
      }

      if (v7 == 23)
      {
        v5 = 64;
        goto LABEL_4;
      }
    }

    else
    {
      if (!v7)
      {
        v5 = 0;
        goto LABEL_4;
      }

      if (v7 == 4)
      {
        v5 = 35;
        goto LABEL_4;
      }
    }

    v5 = 28;
    goto LABEL_4;
  }

  v5 = 3;
LABEL_4:
  objc_sync_exit(v4);

LABEL_5:
  return v5;
}

BOOL sub_100195514(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v9 = a1;
  objc_sync_enter(v9);
  if (v9[169] != 1)
  {
    if ([v7 type] != 9 && objc_msgSend(v7, "type") != 14 && objc_msgSend(v7, "type") != 15 && objc_msgSend(v7, "type") != 16 && objc_msgSend(v7, "type") != 1 && objc_msgSend(v7, "type") != 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v35 = Logger;
        Class = object_getClass(v9);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v9);
        Name = sel_getName("formatTagToNdef:withKey:error:");
        v45 = [v7 type];
        v40 = 45;
        if (isMetaClass)
        {
          v40 = 43;
        }

        v35(3, "%c[%{public}s %{public}s]:%i Unsupport tag type:%d", v40, ClassName, Name, 501, v45);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = object_getClass(v9);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        *buf = 67110146;
        v60 = v43;
        v61 = 2082;
        v62 = object_getClassName(v9);
        v63 = 2082;
        v64 = sel_getName("formatTagToNdef:withKey:error:");
        v65 = 1024;
        v66 = 501;
        v67 = 1024;
        v68 = [v7 type];
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupport tag type:%d", buf, 0x28u);
      }

      if (!a4)
      {
        goto LABEL_8;
      }

      v44 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v57[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v58[0] = v12;
      v58[1] = &off_100333060;
      v57[1] = @"Line";
      v57[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
      v58[2] = v13;
      v57[3] = NSDebugDescriptionErrorKey;
      v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 502];
      v58[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
      v16 = v44;
      v17 = v11;
      v18 = 14;
      goto LABEL_5;
    }

    sub_1001909EC(v9, v7);
    v21 = NFDriverRemoteDevCheckNdef();
    if (v21 > 11)
    {
      if (v21 != 12)
      {
        if (v21 == 23)
        {
          if (!a4)
          {
            goto LABEL_8;
          }

          v23 = [NSError alloc];
          v11 = [NSString stringWithUTF8String:"nfcd"];
          v55[0] = NSLocalizedDescriptionKey;
          v12 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v56[0] = v12;
          v56[1] = &off_100333078;
          v55[1] = @"Line";
          v55[2] = @"Method";
          v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
          v56[2] = v13;
          v55[3] = NSDebugDescriptionErrorKey;
          v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 510];
          v56[3] = v14;
          v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
          v16 = v23;
          v17 = v11;
          v18 = 64;
          goto LABEL_5;
        }

LABEL_27:
        ErrorCode = NFDriverCreateErrorCode();
        v11 = ErrorCode;
        if (!a4 || !ErrorCode)
        {
          goto LABEL_7;
        }

        v47 = [NSError alloc];
        v12 = [NSString stringWithUTF8String:"nfcd"];
        v51[0] = NSLocalizedDescriptionKey;
        v25 = [NSString stringWithUTF8String:"Stack Error"];
        v52[0] = v25;
        v52[1] = v11;
        v51[1] = NSUnderlyingErrorKey;
        v51[2] = @"Line";
        v52[2] = &off_1003330A8;
        v51[3] = @"Method";
        v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
        v52[3] = v26;
        v51[4] = NSDebugDescriptionErrorKey;
        v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 517];
        v52[4] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];
        *a4 = [v47 initWithDomain:v12 code:15 userInfo:v28];

LABEL_6:
LABEL_7:

        goto LABEL_8;
      }
    }

    else if (v21)
    {
      if (v21 == 4)
      {
        if (!a4)
        {
          goto LABEL_8;
        }

        v22 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v53[0] = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:"SE not available"];
        v54[0] = v12;
        v54[1] = &off_100333090;
        v53[1] = @"Line";
        v53[2] = @"Method";
        v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
        v54[2] = v13;
        v53[3] = NSDebugDescriptionErrorKey;
        v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 513];
        v54[3] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
        v16 = v22;
        v17 = v11;
        v18 = 35;
        goto LABEL_5;
      }

      goto LABEL_27;
    }

    if ([v8 length])
    {
      [v8 bytes];
      [v8 length];
      NFDataCreateWithBytesNoCopy();
    }

    sub_1001909EC(v9, v7);
    v29 = NFDriverRemoteDevFormatNdef();
    v19 = v29 == 0;
    if (a4 && v29)
    {
      v30 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v49[0] = NSLocalizedDescriptionKey;
      v48 = [NSString stringWithUTF8String:"Tag Error"];
      v50[0] = v48;
      v50[1] = &off_1003330C0;
      v49[1] = @"Line";
      v49[2] = @"Method";
      v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
      v50[2] = v31;
      v49[3] = NSDebugDescriptionErrorKey;
      v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 535];
      v50[3] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
      *a4 = [v30 initWithDomain:v46 code:29 userInfo:v33];
    }

    NFDataRelease();
    goto LABEL_9;
  }

  if (a4)
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v69[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Aborted"];
    v70[0] = v12;
    v70[1] = &off_100333048;
    v69[1] = @"Line";
    v69[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
    v70[2] = v13;
    v69[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 495];
    v70[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
    v16 = v10;
    v17 = v11;
    v18 = 3;
LABEL_5:
    *a4 = [v16 initWithDomain:v17 code:v18 userInfo:v15];

    goto LABEL_6;
  }

LABEL_8:
  v19 = 0;
LABEL_9:
  objc_sync_exit(v9);

LABEL_10:
  return v19;
}

id sub_1001960B0(void *a1, void *a2, void *a3, void *a4, double a5)
{
  if (a1)
  {
    a1 = sub_1001960E8(a1, a2, a3, 0, a4, a5);
    v5 = vars8;
  }

  return a1;
}

id sub_1001960E8(void *a1, void *a2, void *a3, unsigned int a4, void *a5, double a6)
{
  v10 = a2;
  v11 = a3;
  if (!a1)
  {
    goto LABEL_60;
  }

  v12 = a1;
  objc_sync_enter(v12);
  if (v12[169] == 1)
  {
    if (a5)
    {
      v13 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v94[0] = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"Aborted"];
      v95[0] = v15;
      v95[1] = &off_1003330D8;
      v94[1] = @"Line";
      v94[2] = @"Method";
      v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
      v95[2] = v16;
      v94[3] = NSDebugDescriptionErrorKey;
      v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 551];
      v95[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:4];
      *a5 = [v13 initWithDomain:v14 code:3 userInfo:v18];
    }

    goto LABEL_59;
  }

  [v10 bytes];
  [v10 length];
  NFDataCreateWithBytesNoCopy();
  if (a5)
  {
    *a5 = 0;
  }

  v19 = 0;
  while ([v11 technology] == 4)
  {
    sub_1001909EC(v12, v11);
    v20 = NFDriverRemoteDeviceFelicaTransceive();
LABEL_16:
    v21 = v20;
    if (a4 < ++v19)
    {
      goto LABEL_37;
    }
  }

  if ([v11 technology] == 16)
  {
    sub_1001909EC(v12, v11);
    v20 = NFDriverRemoteDeviceIso15693Transceive();
    goto LABEL_16;
  }

  if ([v11 technology] == 1 || objc_msgSend(v11, "technology") == 2)
  {
    sub_1001909EC(v12, v11);
    v20 = NFDriverRemoteDeviceIso14443Transceive();
    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v23 = Logger;
    Class = object_getClass(v12);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v12);
    Name = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v63 = [v11 technology];
    v28 = 45;
    if (isMetaClass)
    {
      v28 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Tag tech = %d", v28, ClassName, Name, 577, v63);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = object_getClass(v12);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(v12);
    v33 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v34 = [v11 technology];
    *buf = 67110146;
    v85 = v31;
    v86 = 2082;
    v87 = v32;
    v88 = 2082;
    v89 = v33;
    v90 = 1024;
    v91 = 577;
    v92 = 1024;
    v93 = v34;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag tech = %d", buf, 0x28u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFLogGetLogger();
  if (v35)
  {
    v36 = v35;
    v37 = object_getClass(v12);
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(v12);
    v62 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v40 = 45;
    if (v38)
    {
      v40 = 43;
    }

    v36(3, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", v40, v39, v62, 578);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = object_getClass(v12);
    if (class_isMetaClass(v42))
    {
      v43 = 43;
    }

    else
    {
      v43 = 45;
    }

    v44 = object_getClassName(v12);
    v45 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    *buf = 67109890;
    v85 = v43;
    v86 = 2082;
    v87 = v44;
    v88 = 2082;
    v89 = v45;
    v90 = 1024;
    v91 = 578;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", buf, 0x22u);
  }

  v21 = 5;
LABEL_37:
  NFDataRelease();
  NFDataRelease();
  if (v21 > 19)
  {
    if (v21 == 20)
    {
      ErrorCode = NFDriverCreateErrorCode();
      v46 = ErrorCode;
      if (!a5 || !ErrorCode)
      {
        goto LABEL_58;
      }

      v73 = [NSError alloc];
      v50 = [NSString stringWithUTF8String:"nfcd"];
      v80[0] = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Tag Error"];
      v80[1] = NSUnderlyingErrorKey;
      v81[0] = v47;
      v81[1] = v46;
      v48 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
      v55 = v73;
      v56 = v50;
      v57 = 29;
LABEL_56:
      *a5 = [v55 initWithDomain:v56 code:v57 userInfo:v48];
LABEL_57:

LABEL_58:
      goto LABEL_59;
    }

    if (v21 == 23)
    {
      v51 = NFDriverCreateErrorCode();
      v46 = v51;
      if (!a5 || !v51)
      {
        goto LABEL_58;
      }

      v67 = [NSError alloc];
      v70 = [NSString stringWithUTF8String:"nfcd"];
      v78[0] = NSLocalizedDescriptionKey;
      v64 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
      v79[0] = v64;
      v79[1] = v46;
      v78[1] = NSUnderlyingErrorKey;
      v78[2] = @"Line";
      v79[2] = &off_100333108;
      v78[3] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
      v79[3] = v48;
      v78[4] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 606];
      v79[4] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:5];
      v50 = v70;
      *a5 = [v67 initWithDomain:v70 code:64 userInfo:v53];

      v47 = v64;
      goto LABEL_57;
    }

LABEL_47:
    v54 = NFDriverCreateErrorCode();
    v46 = v54;
    if (!a5 || !v54)
    {
      goto LABEL_58;
    }

    v71 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v74[0] = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"Stack Error"];
    v74[1] = NSUnderlyingErrorKey;
    v75[0] = v47;
    v75[1] = v46;
    v48 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
    v55 = v71;
    v56 = v50;
    v57 = 15;
    goto LABEL_56;
  }

  if (v21 == 4)
  {
    v58 = NFDriverCreateErrorCode();
    v46 = v58;
    if (!a5 || !v58)
    {
      goto LABEL_58;
    }

    v68 = [NSError alloc];
    v72 = [NSString stringWithUTF8String:"nfcd"];
    v76[0] = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"SE not available"];
    v77[0] = v47;
    v77[1] = v46;
    v76[1] = NSUnderlyingErrorKey;
    v76[2] = @"Line";
    v77[2] = &off_100333120;
    v76[3] = @"Method";
    v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
    v77[3] = v48;
    v76[4] = NSDebugDescriptionErrorKey;
    v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 609];
    v77[4] = v65;
    v59 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];
    v50 = v72;
    *a5 = [v68 initWithDomain:v72 code:35 userInfo:v59];

    goto LABEL_57;
  }

  if (v21 != 6)
  {
    goto LABEL_47;
  }

  if (a5)
  {
    v66 = [NSError alloc];
    v46 = [NSString stringWithUTF8String:"nfcd"];
    v82[0] = NSLocalizedDescriptionKey;
    v69 = [NSString stringWithUTF8String:"Tag Not Found"];
    v83[0] = v69;
    v83[1] = &off_1003330F0;
    v82[1] = @"Line";
    v82[2] = @"Method";
    v47 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
    v83[2] = v47;
    v82[3] = NSDebugDescriptionErrorKey;
    v48 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 595];
    v83[3] = v48;
    v49 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:4];
    *a5 = [v66 initWithDomain:v46 code:28 userInfo:v49];

    v50 = v69;
    goto LABEL_57;
  }

LABEL_59:
  objc_sync_exit(v12);

LABEL_60:

  return 0;
}

uint64_t sub_100196C90(void *a1, uint64_t a2, void *a3)
{
  if (a1 && (v3 = a1, objc_sync_enter(v3), v4 = v3[169], objc_sync_exit(v3), v3, (v4 & 1) == 0))
  {
    return NFDriverRemoteDevReceive();
  }

  else
  {
    return 0;
  }
}

void sub_100197048(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    if (v5[169] == 1)
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v14[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Invalid State"];
      v15[0] = v8;
      v15[1] = &off_100333138;
      v14[1] = @"Line";
      v14[2] = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readFromHCEDevice:completion:")];
      v15[2] = v9;
      v14[3] = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readFromHCEDevice:completion:"), 651];
      v15[3] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
      v12 = [v6 initWithDomain:v7 code:12 userInfo:v11];
      v4[2](v4, 0, v12);

      objc_sync_exit(v5);
    }

    else
    {
      objc_sync_exit(v5);

      v13 = v4;
      NFDriverRemoteDevReceiveAsync();
      v5 = v13;
    }
  }
}

void sub_1001972BC(uint64_t a1, int a2)
{
  v3 = 0;
  if (a2 <= 4)
  {
    if (a2 == 1)
    {
      v16 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v23[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Stack Error"];
      v24[0] = v6;
      v24[1] = &off_100333168;
      v23[1] = @"Line";
      v23[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v24[2] = v7;
      v23[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 663];
      v24[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
      v10 = v16;
      v11 = v5;
      v12 = 15;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v19[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"No resources"];
      v20[0] = v6;
      v20[1] = &off_100333198;
      v19[1] = @"Line";
      v19[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v20[2] = v7;
      v19[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 667];
      v20[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
      v10 = v13;
      v11 = v5;
      v12 = 34;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 5:
        v14 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v21[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v22[0] = v6;
        v22[1] = &off_100333180;
        v21[1] = @"Line";
        v21[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v22[2] = v7;
        v21[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 665];
        v22[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
        v10 = v14;
        v11 = v5;
        v12 = 10;
        goto LABEL_12;
      case 21:
        v15 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v17[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Tag is halted"];
        v18[0] = v6;
        v18[1] = &off_1003331B0;
        v17[1] = @"Line";
        v17[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v18[2] = v7;
        v17[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 669];
        v18[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
        v10 = v15;
        v11 = v5;
        v12 = 62;
        goto LABEL_12;
      case 6:
        v4 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v25[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Tag Not Found"];
        v26[0] = v6;
        v26[1] = &off_100333150;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v26[2] = v7;
        v25[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 661];
        v26[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
        v10 = v4;
        v11 = v5;
        v12 = 28;
LABEL_12:
        v3 = [v10 initWithDomain:v11 code:v12 userInfo:v9];

        break;
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100197918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  objc_sync_enter(v4);
  v5 = v4[169];
  objc_sync_exit(v4);

  if (v5)
  {
    return 0;
  }

  return NFDriverRemoteDevSend();
}

void sub_1001979AC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a1)
  {
    v8 = objc_opt_new();
    [*(a1 + 24) removeAllObjects];
    sub_10021E0D0(a1);
    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAGS_DETECTED", &unk_1002E8B7A, buf, 2u);
    }

    v72 = v8;

    v71 = a4;
    if (a4)
    {
      if (!a3)
      {
LABEL_48:
        [*(a1 + 56) tagDetected];
        sub_1001E6EFC(*(a1 + 48), 1);
        if (*(*(a1 + 8) + 62) & 1) == 0 || (*(a1 + 32))
        {
          v42 = *(a1 + 208);
          v43 = v72;
          [v42 handleRemoteTagsDetected:v72 dropAndRestartDiscovery:v71];

LABEL_72:
          return;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v58 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
          v62 = 45;
          if (isMetaClass)
          {
            v62 = 43;
          }

          v58(3, "%c[%{public}s %{public}s]:%i Error ! Applet hasn't started reader mode, yet the field is on.", v62, ClassName, Name, 812);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v63 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = object_getClass(a1);
          if (class_isMetaClass(v64))
          {
            v65 = 43;
          }

          else
          {
            v65 = 45;
          }

          v66 = object_getClassName(a1);
          v67 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
          *buf = 67109890;
          v76 = v65;
          v77 = 2082;
          v78 = v66;
          v79 = 2082;
          v80 = v67;
          v81 = 1024;
          v82 = 812;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error ! Applet hasn't started reader mode, yet the field is on.", buf, 0x22u);
        }

        v55 = @"tag found during SERM, Applet did not request SERM.";
        sub_100199974(NFBugCapture, @"Applet hasn't started reader mode, yet we found a tag", @"tag found during SERM, Applet did not request SERM.", 0);
        v56 = 6;
LABEL_71:
        [NFExceptionsCALogger postAnalyticsSEFailureEvent:v56 context:v55 error:0];
        v43 = v72;
        goto LABEL_72;
      }
    }

    else if (!a2 || !a3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(a1);
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(a1);
        v69 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(3, "%c[%{public}s %{public}s]:%i Invalid tag data", v49, v48, v69, 715);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = object_getClass(a1);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v53 = object_getClassName(a1);
        v54 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
        *buf = 67109890;
        v76 = v52;
        v77 = 2082;
        v78 = v53;
        v79 = 2082;
        v80 = v54;
        v81 = 1024;
        v82 = 715;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag data", buf, 0x22u);
      }

      v55 = @"NFC Invalid tag data";
      sub_100199974(NFBugCapture, @"NFC Invalid tag data", @"NFC Invalid tag data", 0);
      v56 = 5;
      goto LABEL_71;
    }

    v10 = a3;
    while (1)
    {
      v11 = objc_alloc_init(NFTagInternal);
      v12 = [[NSData alloc] initWithBytes:a2 + 72 length:*(a2 + 88)];
      [v11 _setIdentifier:v12];
      v13 = *(a2 + 8);
      if (v13 > 5)
      {
        if (v13 <= 8)
        {
          if (v13 == 6)
          {
            [v11 _setTechnology:1];
            v16 = v11;
            v17 = 11;
          }

          else if (v13 == 7)
          {
            [v11 _setTechnology:1];
            v16 = v11;
            v17 = 12;
          }

          else
          {
            [v11 _setTechnology:0];
            v16 = v11;
            v17 = 10;
          }

          goto LABEL_43;
        }

        if ((v13 - 9) < 3)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v18 = NFLogGetLogger();
          if (v18)
          {
            v19 = v18;
            v20 = object_getClass(a1);
            v21 = class_isMetaClass(v20);
            v22 = object_getClassName(a1);
            v68 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
            v23 = 45;
            if (v21)
            {
              v23 = 43;
            }

            v19(4, "%c[%{public}s %{public}s]:%i unexpected silent tag found", v23, v22, v68, 790);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = object_getClass(a1);
            if (class_isMetaClass(v25))
            {
              v26 = 43;
            }

            else
            {
              v26 = 45;
            }

            v27 = object_getClassName(a1);
            v28 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
            *buf = 67109890;
            v76 = v26;
            v77 = 2082;
            v78 = v27;
            v79 = 2082;
            v80 = v28;
            v81 = 1024;
            v82 = 790;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unexpected silent tag found", buf, 0x22u);
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            [v11 _setTechnology:4];
            [v11 _setType:7];
            v29 = [[NSData alloc] initWithBytes:a2 + 13 length:*(a2 + 12)];
            [v11 _setIdentifier:v29];

            v30 = [[NSData alloc] initWithBytes:a2 + 13 length:*(a2 + 12)];
            [v11 _setIDm:v30];

            v31 = [[NSData alloc] initWithBytes:a2 + 23 length:8];
            [v11 _setPMm:v31];
LABEL_45:

            goto LABEL_46;
          }

          if (v13 == 4)
          {
            [v11 _setTechnology:1];
            [v11 _setType:9];
            v36 = [[NSData alloc] initWithBytes:a2 + 19 length:*(a2 + 67)];
            [v11 _setHistoricalBytes:v36];

            v37 = [[NSData alloc] initWithBytes:a2 + 17 length:2];
            [v11 _setAtqa:v37];

            v31 = [[NSData alloc] initWithBytes:a2 + 16 length:1];
            [v11 _setSak:v31];
            goto LABEL_45;
          }

          [v11 _setTechnology:16];
          v16 = v11;
          v17 = 8;
          goto LABEL_43;
        }

        switch(v13)
        {
          case 0:
            [v11 _setTechnology:0];
            v16 = v11;
            v17 = 0;
LABEL_43:
            [v16 _setType:v17];
            break;
          case 1:
            [v11 _setTechnology:1];
            v32 = *(a2 + 12);
            if (v32 <= 2)
            {
              [v11 _setType:v32 + 1];
            }

            v33 = [[NSData alloc] initWithBytes:a2 + 19 length:*(a2 + 67)];
            [v11 _setHistoricalBytes:v33];

            v34 = [[NSData alloc] initWithBytes:a2 + 17 length:2];
            [v11 _setAtqa:v34];

            v35 = [[NSData alloc] initWithBytes:a2 + 16 length:1];
            [v11 _setSak:v35];

            v15 = *(a2 + 68);
            goto LABEL_41;
          case 2:
            [v11 _setTechnology:2];
            v14 = *(a2 + 12);
            if (v14 <= 2)
            {
              [v11 _setType:v14 | 4];
            }

            v15 = *(a2 + 16);
LABEL_41:
            [v11 _setSFGI:v15];
            break;
        }
      }

LABEL_46:
      v24 = [a1 _getExtendedIdentifier:v11];
      v38 = *(a1 + 24);
      v73[0] = @"tagHandle";
      v39 = [NSValue valueWithPointer:*a2];
      v73[1] = @"type";
      v74[0] = v39;
      v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 type]);
      v74[1] = v40;
      v41 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
      [v38 setObject:v41 forKey:v24];

      [v11 _setUID:v24];
      [v72 addObject:v11];
LABEL_47:

      a2 += 96;
      if (!--v10)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_1001982E8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 208);
    [v1 handleHceTargetLost];
  }
}

void sub_1001985F8(id a1)
{
  v1 = objc_alloc_init(NFBugCapture);
  v2 = qword_10035DA80;
  qword_10035DA80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100199548(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_self();
  if (os_variant_has_internal_diagnostics())
  {
    v14 = +[NFBugCapture _getInstance];
    [v14 requestAutoBugCapture:v15 subType:v10 subTypeContext:v11 attachments:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, 0.0);
  }
}

void sub_100199700(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_opt_self();
  v18 = objc_autoreleasePoolPush();
  if (os_variant_has_internal_diagnostics())
  {
    v19 = +[NFBugCapture _getInstance];
    v20 = v19;
    if (v19)
    {
      v21 = v19[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001998AC;
      block[3] = &unk_10031ADC8;
      v23 = v19;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      dispatch_async(v21, block);
    }
  }

  objc_autoreleasePoolPop(v18);
}

void sub_1001998C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AA8;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Transaction Failure", v7, v9);
}

void sub_100199974(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AD0;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"Purple Stockholm", 0, @"Unexpected crash", v7, v9);
}

void sub_100199A24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AF8;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Contactless Failure", v7, v9);
}

void sub_100199AD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Provisioning Failure", v7, v6);
}

void sub_100199B74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"ATL Failure", v7, v6);
}

void sub_100199C14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339B20;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Express Mode Failure", v7, v9);
}

void sub_100199CC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339B48;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"Purple Stockholm", 0, @"NFAccessory Failure", v7, v9);
}

void sub_10019AFB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 compare:*(a1 + 40)] == -1)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_10019B848(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid type";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019B928(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid subType";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BA08(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid subTypeContext";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BAE8(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Time limited";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_10027EC7C(v4);
  v7 = *(v6 + 3928);
  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:{*v7, v5}];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = sub_10027ECE8(v5);
  if (*(v12 + 3952))
  {
    v13 = sub_10027ECE8(v11);
    v15 = [v3 objectForKeyedSubscript:{**(v14 + 3952), v13}];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(6, "%c[%{public}s %{public}s]:%i ABC Request submitted successfully", v23, ClassName, Name, 607);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(*(a1 + 32));
        v28 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v58 = v26;
        v59 = 2082;
        v60 = v27;
        v61 = 2082;
        v62 = v28;
        v63 = 1024;
        v64 = 607;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ABC Request submitted successfully", buf, 0x22u);
      }

      v29 = 0;
    }

    else
    {
      v30 = sub_10027ECA0(v17);
      if (*(v31 + 3936))
      {
        v32 = sub_10027ECA0(v30);
        v34 = [v3 objectForKeyedSubscript:{**(v33 + 3936), v32}];
        v35 = [v34 integerValue];
      }

      else
      {
        v35 = -1;
      }

      v36 = sub_10027ECC4(v30);
      if (*(v37 + 3944))
      {
        v38 = sub_10027ECC4(v36);
        v40 = [v3 objectForKeyedSubscript:{**(v39 + 3944), v38}];
      }

      else
      {
        v40 = @"Unknown reason";
      }

      v41 = [NSError alloc];
      v67 = NSLocalizedDescriptionKey;
      v68 = v40;
      v42 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v29 = [v41 initWithDomain:@"nfcd.abc" code:v35 userInfo:v42];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(*(a1 + 32));
        v46 = class_isMetaClass(v45);
        v54 = object_getClassName(*(a1 + 32));
        v56 = sel_getName(*(a1 + 48));
        v47 = 45;
        if (v46)
        {
          v47 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i ABC Request was rejected. Reason Code: %ld", v47, v54, v56, 618, v35);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(*(a1 + 32));
        v52 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v58 = v50;
        v59 = 2082;
        v60 = v51;
        v61 = 2082;
        v62 = v52;
        v63 = 1024;
        v64 = 618;
        v65 = 2048;
        v66 = v35;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ABC Request was rejected. Reason Code: %ld", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v29 = [[NSError alloc] initWithDomain:@"nfcd.abc" code:7 userInfo:0];
  }

  v53 = *(a1 + 40);
  if (v53)
  {
    (*(v53 + 16))(v53, v29, v10);
  }
}

void sub_10019C0A0(void *a1)
{
  if (a1)
  {
    v2 = [a1 driverWrapper];
    v3 = sub_1001A9F5C(v2);

    v4 = v3 & 0x1E;
    if (v4)
    {
      if (byte_10035DA90)
      {
        return;
      }

      v5 = [a1 driverWrapper];
      v6 = sub_10021A4A0(v5, @"LPEM features", 1uLL);
    }

    else
    {
      if (!byte_10035DA90)
      {
        return;
      }

      v5 = [a1 driverWrapper];
      sub_10021CC94(v5, @"LPEM features");
    }

    byte_10035DA90 = v4 != 0;
  }
}