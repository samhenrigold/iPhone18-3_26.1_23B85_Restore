@interface CCHIInterface
- (BOOL)start:(id *)start;
- (CCHIInterface)init;
- (id)getBootPerformanceStats;
- (id)getPMUFaultInfo;
- (id)getPowerStats:(BOOL)stats;
- (id)getSiKPublicKey;
- (id)hello;
- (id)sendCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid;
- (id)shell:(id)shell;
- (void)dealloc;
- (void)log;
- (void)stop;
@end

@implementation CCHIInterface

- (CCHIInterface)init
{
  v6.receiver = self;
  v6.super_class = CCHIInterface;
  v2 = [(CCHIInterface *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AirshipInterface);
    airshipInterface = v2->_airshipInterface;
    v2->_airshipInterface = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_started)
  {
    sub_10002E68C(self);
    [(CCHIInterface *)v2 stop];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CCHIInterface;
    [(CCHIInterface *)&v4 dealloc];
  }
}

- (void)stop
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  if (self->_started)
  {
    [(AirshipInterface *)self->_airshipInterface stop];
    self->_rxSeq = 0;
    *&self->_started = 0;
  }
}

- (id)sendCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid
{
  oidCopy = oid;
  gidCopy = gid;
  commandCopy = command;
  if ([commandCopy length] >= 0x3F9)
  {
    sub_10002EA80();
LABEL_17:
    v21 = 0;
    v14 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v10 = [commandCopy length] + 8;
  v11 = malloc_type_calloc(1uLL, v10, 0x1966C672uLL);
  if (!v11)
  {
    sub_10002E9B8(self);
    goto LABEL_17;
  }

  v12 = v11;
  *v11 = v10;
  v11[2] = gidCopy;
  v11[3] = oidCopy;
  txSeq = self->_txSeq;
  self->_txSeq = txSeq + 1;
  v11[4] = txSeq;
  [commandCopy getBytes:v11 + 8 length:{objc_msgSend(commandCopy, "length")}];
  v14 = [NSData dataWithBytesNoCopy:v12 length:v10 freeWhenDone:0];
  if (!v14)
  {
    sub_10002E8F0(self);
    goto LABEL_19;
  }

  if (![(AirshipInterface *)self->_airshipInterface write:v14])
  {
LABEL_19:
    v16 = 0;
    goto LABEL_31;
  }

  v15 = [(AirshipInterface *)self->_airshipInterface read:1024];
  v16 = v15;
  if (!v15)
  {
LABEL_31:
    v21 = 0;
    goto LABEL_13;
  }

  if ([v15 length] <= 7)
  {
    sub_10002E828();
    goto LABEL_31;
  }

  bytes = [v16 bytes];
  v18 = *bytes;
  v19 = [v16 length];
  if (v19 != v18)
  {
    v24 = sub_100025204(v19);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      goto LABEL_31;
    }

    v25 = [objc_opt_class() description];
    v26 = NSStringFromSelector(a2);
    v27 = *bytes;
    v40 = 138544130;
    v41 = v25;
    v42 = 2114;
    v43 = v26;
    v44 = 1024;
    v45 = v27;
    v46 = 2048;
    v47 = [v16 length];
    v28 = "%{public}@::%{public}@: response length mismatch: %hu != %lu";
    v29 = v24;
    v30 = 38;
LABEL_33:
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, &v40, v30);

    goto LABEL_26;
  }

  v20 = bytes[4];
  if (v20 != self->_rxSeq)
  {
    v24 = sub_100025204(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_opt_class() description];
      v32 = NSStringFromSelector(a2);
      v33 = bytes[4];
      rxSeq = self->_rxSeq;
      v40 = 138544130;
      v41 = v31;
      v42 = 2114;
      v43 = v32;
      v44 = 1024;
      v45 = v33;
      v46 = 1024;
      LODWORD(v47) = rxSeq;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: received sequence num %u, expected %u", &v40, 0x22u);
    }

    goto LABEL_26;
  }

  self->_rxSeq = v20 + 1;
  if (bytes[2] != gidCopy)
  {
    v24 = sub_100025204(v19);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v25 = [objc_opt_class() description];
    v26 = NSStringFromSelector(a2);
    v36 = bytes[2];
    v40 = 138544130;
    v41 = v25;
    v42 = 2114;
    v43 = v26;
    v44 = 1024;
    v45 = v36;
    v46 = 1024;
    LODWORD(v47) = gidCopy;
    v28 = "%{public}@::%{public}@: received gid %u, expected %u";
    v29 = v24;
    v30 = 34;
    goto LABEL_33;
  }

  if (bytes[3] != oidCopy)
  {
    v35 = sub_100025204(v19);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = [objc_opt_class() description];
      v38 = NSStringFromSelector(a2);
      v39 = bytes[3];
      v40 = 138544130;
      v41 = v37;
      v42 = 2114;
      v43 = v38;
      v44 = 1024;
      v45 = v39;
      v46 = 1024;
      LODWORD(v47) = oidCopy;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: received oid %u, expected %u", &v40, 0x22u);
    }

    goto LABEL_31;
  }

  if (bytes[5])
  {
    sub_10002E744();
    goto LABEL_31;
  }

  v21 = [v16 subdataWithRange:{8, objc_msgSend(v16, "length") - 8}];
LABEL_13:
  free(v12);
LABEL_14:
  v22 = v21;

  return v21;
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    started = self->_started;
    txSeq = self->_txSeq;
    rxSeq = self->_rxSeq;
    v10 = 138544386;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 1024;
    v15 = started;
    v16 = 1024;
    v17 = txSeq;
    v18 = 1024;
    v19 = rxSeq;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: started %u, TX seq %u, RX seq %u", &v10, 0x28u);
  }
}

- (id)getSiKPublicKey
{
  v3 = [(CCHIInterface *)self sendCommand:0 gid:0 oid:5];
  v4 = v3;
  if (![v3 length])
  {
    sub_10002EB48(self);
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)getBootPerformanceStats
{
  v140[0] = &off_10006D908;
  v105 = [NSString stringWithUTF8String:"bootFromROM"];
  v141[0] = v105;
  v140[1] = &off_10006D920;
  v128 = [NSString stringWithUTF8String:"clockDone"];
  v141[1] = v128;
  v140[2] = &off_10006D938;
  v126 = [NSString stringWithUTF8String:"endOfResource"];
  v141[2] = v126;
  v140[3] = &off_10006D950;
  v124 = [NSString stringWithUTF8String:"irqEnable"];
  v141[3] = v124;
  v140[4] = &off_10006D968;
  v122 = [NSString stringWithUTF8String:"beforeScheduler"];
  v141[4] = v122;
  v140[5] = &off_10006D980;
  v121 = [NSString stringWithUTF8String:"afterScheduler"];
  v141[5] = v121;
  v140[6] = &off_10006D998;
  v120 = [NSString stringWithUTF8String:"validFilesystemPresent"];
  v141[6] = v120;
  v140[7] = &off_10006D9B0;
  v119 = [NSString stringWithUTF8String:"nvramPresent"];
  v141[7] = v119;
  v140[8] = &off_10006D9C8;
  v118 = [NSString stringWithUTF8String:"logInfrastructureUp"];
  v141[8] = v118;
  v140[9] = &off_10006D9E0;
  v117 = [NSString stringWithUTF8String:"preparingForNewCrashHandling"];
  v141[9] = v117;
  v140[10] = &off_10006D9F8;
  v116 = [NSString stringWithUTF8String:"ftabAvailable"];
  v141[10] = v116;
  v140[11] = &off_10006DA10;
  v115 = [NSString stringWithUTF8String:"appStart"];
  v141[11] = v115;
  v140[12] = &off_10006DA28;
  v114 = [NSString stringWithUTF8String:"appEnd"];
  v141[12] = v114;
  v140[13] = &off_10006DA40;
  v113 = [NSString stringWithUTF8String:"aopStart"];
  v141[13] = v113;
  v140[14] = &off_10006DA58;
  v112 = [NSString stringWithUTF8String:"aopFWLoad"];
  v141[14] = v112;
  v140[15] = &off_10006DA70;
  v111 = [NSString stringWithUTF8String:"aopAppLoad"];
  v141[15] = v111;
  v140[16] = &off_10006DA88;
  v110 = [NSString stringWithUTF8String:"btStart"];
  v141[16] = v110;
  v140[17] = &off_10006DAA0;
  v109 = [NSString stringWithUTF8String:"btFWLoad"];
  v141[17] = v109;
  v140[18] = &off_10006DAB8;
  v108 = [NSString stringWithUTF8String:"hostAppLoad"];
  v141[18] = v108;
  v140[19] = &off_10006DAD0;
  v107 = [NSString stringWithUTF8String:"dspFWLoad"];
  v141[19] = v107;
  v140[20] = &off_10006DAE8;
  v106 = [NSString stringWithUTF8String:"filesystemNotPresent"];
  v141[20] = v106;
  v140[21] = &off_10006DB00;
  v104 = [NSString stringWithUTF8String:"iopLoadStart"];
  v141[21] = v104;
  v140[22] = &off_10006DB18;
  v103 = [NSString stringWithUTF8String:"iopLoadDone"];
  v141[22] = v103;
  v140[23] = &off_10006DB30;
  v102 = [NSString stringWithUTF8String:"beforePTM"];
  v141[23] = v102;
  v140[24] = &off_10006DB48;
  v101 = [NSString stringWithUTF8String:"ptmDone"];
  v141[24] = v101;
  v140[25] = &off_10006DB60;
  v100 = [NSString stringWithUTF8String:"manifestValidated"];
  v141[25] = v100;
  v140[26] = &off_10006DB78;
  v99 = [NSString stringWithUTF8String:"bt2GFetchValidateBegin"];
  v141[26] = v99;
  v140[27] = &off_10006DB90;
  v98 = [NSString stringWithUTF8String:"bt2GFetchValidateDone"];
  v141[27] = v98;
  v140[28] = &off_10006DBA8;
  v97 = [NSString stringWithUTF8String:"bt5GFetchValidateBegin"];
  v141[28] = v97;
  v140[29] = &off_10006DBC0;
  v96 = [NSString stringWithUTF8String:"bt5GFetchValidateDone"];
  v141[29] = v96;
  v140[30] = &off_10006DBD8;
  v95 = [NSString stringWithUTF8String:"btLPSFetchValidateBegin"];
  v141[30] = v95;
  v140[31] = &off_10006DBF0;
  v94 = [NSString stringWithUTF8String:"btLPSFetchValidateDone"];
  v141[31] = v94;
  v140[32] = &off_10006DC08;
  v93 = [NSString stringWithUTF8String:"btMainFetchValidateBegin"];
  v141[32] = v93;
  v140[33] = &off_10006DC20;
  v92 = [NSString stringWithUTF8String:"btMainFetchValidateDone"];
  v141[33] = v92;
  v140[34] = &off_10006DC38;
  v91 = [NSString stringWithUTF8String:"btSecFetchValidateBegin"];
  v141[34] = v91;
  v140[35] = &off_10006DC50;
  v90 = [NSString stringWithUTF8String:"btSecFetchValidateDone"];
  v141[35] = v90;
  v140[36] = &off_10006DC68;
  v89 = [NSString stringWithUTF8String:"wifiLM2GFetchValidateBegin"];
  v141[36] = v89;
  v140[37] = &off_10006DC80;
  v88 = [NSString stringWithUTF8String:"wifiLM2GFetchValidateDone"];
  v141[37] = v88;
  v140[38] = &off_10006DC98;
  v87 = [NSString stringWithUTF8String:"wifiLM5GFetchValidateBegin"];
  v141[38] = v87;
  v140[39] = &off_10006DCB0;
  v86 = [NSString stringWithUTF8String:"wifiLM5GFetchValidateDone"];
  v141[39] = v86;
  v140[40] = &off_10006DCC8;
  v85 = [NSString stringWithUTF8String:"wifiMainFetchValidateBegin"];
  v141[40] = v85;
  v140[41] = &off_10006DCE0;
  v84 = [NSString stringWithUTF8String:"wifiMainFetchValidateDone"];
  v141[41] = v84;
  v140[42] = &off_10006DCF8;
  v83 = [NSString stringWithUTF8String:"wifiP2GFetchValidateBegin"];
  v141[42] = v83;
  v140[43] = &off_10006DD10;
  v82 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v141[43] = v82;
  v140[44] = &off_10006DD28;
  v81 = [NSString stringWithUTF8String:"wifiP5GFetchValidateBegin"];
  v141[44] = v81;
  v140[45] = &off_10006DD40;
  v80 = [NSString stringWithUTF8String:"wifiP5GFetchValidateDone"];
  v141[45] = v80;
  v140[46] = &off_10006DD58;
  v79 = [NSString stringWithUTF8String:"wifiRXFetchValidateBegin"];
  v141[46] = v79;
  v140[47] = &off_10006DD70;
  v78 = [NSString stringWithUTF8String:"wifiRXFetchValidateDone"];
  v141[47] = v78;
  v140[48] = &off_10006DD88;
  v77 = [NSString stringWithUTF8String:"wifiTXFetchValidateBegin"];
  v141[48] = v77;
  v140[49] = &off_10006DDA0;
  v76 = [NSString stringWithUTF8String:"wifiTXFetchValidateDone"];
  v141[49] = v76;
  v140[50] = &off_10006DDB8;
  v75 = [NSString stringWithUTF8String:"wifiScanFetchValidateBegin"];
  v141[50] = v75;
  v140[51] = &off_10006DDD0;
  v74 = [NSString stringWithUTF8String:"wifiScanFetchValidateDone"];
  v141[51] = v74;
  v140[52] = &off_10006DDE8;
  v2 = [NSString stringWithUTF8String:"btFLRSequencePrepared"];
  v141[52] = v2;
  v140[53] = &off_10006DE00;
  v3 = [NSString stringWithUTF8String:"wifiFLRSequencePrepared"];
  v141[53] = v3;
  v140[54] = &off_10006DE18;
  v4 = [NSString stringWithUTF8String:"controlAppInitBegin"];
  v141[54] = v4;
  v140[55] = &off_10006DE30;
  v5 = [NSString stringWithUTF8String:"controlAppInitDone"];
  v141[55] = v5;
  v140[56] = &off_10006DE48;
  v6 = [NSString stringWithUTF8String:"fdrCalBegin"];
  v141[56] = v6;
  v140[57] = &off_10006DE60;
  v7 = [NSString stringWithUTF8String:"fdrCalDone"];
  v141[57] = v7;
  v140[58] = &off_10006DE78;
  v8 = [NSString stringWithUTF8String:"imageResponseSent"];
  v141[58] = v8;
  v140[59] = &off_10006DE90;
  v9 = [NSString stringWithUTF8String:"bootStageOS"];
  v141[59] = v9;
  v140[60] = &off_10006DEA8;
  v10 = [NSString stringWithUTF8String:"postAllFWLoad"];
  v141[60] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:61];

  v130 = 0;
  v12 = +[NSMutableDictionary dictionary];
  v127 = +[NSMutableSet set];
  v129 = +[NSMutableSet set];
  v13 = 0;
  do
  {
    v14 = [NSData dataWithBytes:&v130 length:2];
    v15 = [(CCHIInterface *)self sendCommand:v14 gid:0 oid:8];
    v16 = v15;
    if (!v15)
    {
      goto LABEL_68;
    }

    v17 = [v15 length];
    if (v17 <= 7)
    {
      v47 = sub_100025204(v17);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v48 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      v50 = [v16 length];
      *buf = 138543874;
      v132 = v48;
      v133 = 2114;
      v134 = v49;
      v135 = 2048;
      *v136 = v50;
      v51 = "%{public}@::%{public}@: response too small %lu";
LABEL_44:
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v51, buf, 0x20u);

LABEL_50:
      goto LABEL_67;
    }

    v18 = [v16 length] - 8;
    v19 = v18 / 0xC;
    v20 = [v16 length];
    if ((12 * (v18 / 0xC) + 8) != v20)
    {
      v47 = sub_100025204(v20);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v48 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      v52 = [v16 length];
      *buf = 138543874;
      v132 = v48;
      v133 = 2114;
      v134 = v49;
      v135 = 2048;
      *v136 = v52;
      v51 = "%{public}@::%{public}@: invalid response size %lu";
      goto LABEL_44;
    }

    bytes = [v16 bytes];
    v22 = bytes;
    v23 = *bytes;
    if (v23 != v130)
    {
      v47 = sub_100025204(bytes);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v48 = [objc_opt_class() description];
      v53 = NSStringFromSelector(a2);
      v54 = *v22;
      *buf = 138544130;
      v132 = v48;
      v133 = 2114;
      v134 = v53;
      v135 = 1024;
      *v136 = v54;
      *&v136[4] = 1024;
      *&v136[6] = v130;
      v55 = "%{public}@::%{public}@: received start index %u, requested %u";
LABEL_49:
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v55, buf, 0x22u);

      goto LABEL_50;
    }

    v24 = bytes[1];
    if (v24 < v23)
    {
      v47 = sub_100025204(bytes);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v48 = [objc_opt_class() description];
      v53 = NSStringFromSelector(a2);
      v56 = v22[1];
      v57 = *v22;
      *buf = 138544130;
      v132 = v48;
      v133 = 2114;
      v134 = v53;
      v135 = 1024;
      *v136 = v56;
      *&v136[4] = 1024;
      *&v136[6] = v57;
      v55 = "%{public}@::%{public}@: end index %u less than start index %u";
      goto LABEL_49;
    }

    v125 = v14;
    v25 = bytes[2];
    if (v25 < v24)
    {
      v47 = sub_100025204(bytes);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v58 = [objc_opt_class() description];
      v59 = NSStringFromSelector(a2);
      v60 = v22[2];
      v61 = v22[1];
      *buf = 138544130;
      v132 = v58;
      v133 = 2114;
      v134 = v59;
      v135 = 1024;
      *v136 = v60;
      *&v136[4] = 1024;
      *&v136[6] = v61;
      v62 = "%{public}@::%{public}@: max index %u less than end index %u";
      goto LABEL_64;
    }

    if (v18 < 0xC)
    {
      if (*bytes)
      {
        v47 = sub_100025204(bytes);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v58 = [objc_opt_class() description];
          v59 = NSStringFromSelector(a2);
          v63 = *v22;
          *buf = 138543874;
          v132 = v58;
          v133 = 2114;
          v134 = v59;
          v135 = 1024;
          *v136 = v63;
          v62 = "%{public}@::%{public}@: start index %u but no stats present";
LABEL_61:
          v67 = v47;
          v68 = 28;
          goto LABEL_65;
        }
      }

      else
      {
        if (!bytes[1])
        {
          if (!bytes[2])
          {
            v26 = 0;
            goto LABEL_27;
          }

          v47 = sub_100025204(bytes);
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v58 = [objc_opt_class() description];
          v59 = NSStringFromSelector(a2);
          v70 = v22[2];
          *buf = 138543874;
          v132 = v58;
          v133 = 2114;
          v134 = v59;
          v135 = 1024;
          *v136 = v70;
          v62 = "%{public}@::%{public}@: max index %u but no stats present";
          goto LABEL_61;
        }

        v47 = sub_100025204(bytes);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v58 = [objc_opt_class() description];
          v59 = NSStringFromSelector(a2);
          v69 = v22[1];
          *buf = 138543874;
          v132 = v58;
          v133 = 2114;
          v134 = v59;
          v135 = 1024;
          *v136 = v69;
          v62 = "%{public}@::%{public}@: end index %u but no stats present";
          goto LABEL_61;
        }
      }

LABEL_66:
      v14 = v125;
LABEL_67:

LABEL_68:
      v40 = 0;
LABEL_36:

      goto LABEL_37;
    }

    if (v24 - v23 + 1 != v19)
    {
      v47 = sub_100025204(bytes);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v58 = [objc_opt_class() description];
        v59 = NSStringFromSelector(a2);
        v64 = [v16 length];
        v65 = *v22;
        v66 = v22[1];
        *buf = 138544386;
        v132 = v58;
        v133 = 2114;
        v134 = v59;
        v135 = 2048;
        *v136 = v64;
        *&v136[8] = 1024;
        v137 = v65;
        v138 = 1024;
        v139 = v66;
        v62 = "%{public}@::%{public}@: response size %lu doesn't match indexes (%u,%u)";
        v67 = v47;
        v68 = 44;
LABEL_65:
        _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, v62, buf, v68);

        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if (*bytes)
    {
      if (v25 >= v13)
      {
        v25 = v13;
        goto LABEL_17;
      }

      v47 = sub_100025204(bytes);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v71 = v13;
      v58 = [objc_opt_class() description];
      v59 = NSStringFromSelector(a2);
      v72 = v22[2];
      *buf = 138544130;
      v132 = v58;
      v133 = 2114;
      v134 = v59;
      v135 = 1024;
      *v136 = v72;
      *&v136[4] = 1024;
      *&v136[6] = v71;
      v62 = "%{public}@::%{public}@: max index %u less than previous max index %u";
LABEL_64:
      v67 = v47;
      v68 = 34;
      goto LABEL_65;
    }

LABEL_17:
    v27 = (bytes + 4);
    if (v19 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v19;
    }

    do
    {
      v29 = [NSNumber numberWithUnsignedInt:*v27];
      v30 = [v11 objectForKeyedSubscript:v29];

      if (v30)
      {
        v31 = [v12 objectForKey:v30];

        if (v31)
        {
          [v129 addObject:v30];
        }

        v32 = [NSNumber numberWithUnsignedLongLong:*(v27 + 1)];
        [v12 setObject:v32 forKey:v30];
      }

      else
      {
        v32 = [NSNumber numberWithUnsignedInt:*v27];
        [v127 addObject:v32];
      }

      v27 += 3;
      --v28;
    }

    while (v28);
    v26 = v22[1];
LABEL_27:
    v130 = v26 + 1;

    v13 = v25;
  }

  while (v26 < v25);
  v33 = [v129 count];
  if (v33)
  {
    v34 = sub_100025204(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [objc_opt_class() description];
      v36 = NSStringFromSelector(a2);
      allObjects = [v129 allObjects];
      v38 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v132 = v35;
      v133 = 2114;
      v134 = v36;
      v135 = 2112;
      *v136 = v38;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: duplicated events: {%@}", buf, 0x20u);
    }
  }

  v39 = [v127 count];
  v40 = v12;
  if (v39)
  {
    v14 = sub_100025204(v39);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [objc_opt_class() description];
      v42 = NSStringFromSelector(a2);
      allObjects2 = [v127 allObjects];
      v44 = [allObjects2 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v132 = v41;
      v133 = 2114;
      v134 = v42;
      v135 = 2112;
      *v136 = v44;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ignoring unrecognized events: {%@}", buf, 0x20u);
    }

    v40 = v12;
    goto LABEL_36;
  }

LABEL_37:
  v45 = v40;

  return v45;
}

- (BOOL)start:(id *)start
{
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v7;
    sub_100016B20();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
  }

  if (self->_started)
  {
    *start = @"alreadyStarted";
    v11 = sub_100025204(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v12;
      sub_100016B20();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: already started", &v15, 0x16u);
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [(AirshipInterface *)self->_airshipInterface start:start];
    if (v10)
    {
      self->_rxSeq = 0;
      LOBYTE(v10) = 1;
      *&self->_started = 1;
    }
  }

  return v10;
}

- (id)hello
{
  [NSData dataWithBytes:"centaurid" length:10];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10001D084() sendCommand:? gid:? oid:?];
  v5 = v4;
  if (v4)
  {
    if ([v4 length])
    {
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      goto LABEL_4;
    }

    v8 = sub_100025204(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v11 = 138543618;
      v12 = v9;
      sub_100016B20();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: no response payload", &v11, 0x16u);
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (id)shell:(id)shell
{
  v4 = [shell dataUsingEncoding:4];
  v5 = [(CCHIInterface *)self sendCommand:v4 gid:0 oid:1];
  if (v5)
  {
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPMUFaultInfo
{
  v3 = [(CCHIInterface *)self sendCommand:0 gid:0 oid:3];
  v4 = v3;
  if (!v3)
  {
LABEL_28:
    v13 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v5 = [v3 length];
  if (v5 != 1)
  {
    v15 = sub_100025204(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v16 = sub_100004654();
      v17 = NSStringFromSelector(v16);
      [v4 length];
      *buf = 138543874;
      selfCopy = self;
      sub_10001D058();
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected response size %lu", buf, 0x20u);
    }

    goto LABEL_28;
  }

  bytes = [v4 bytes];
  v7 = objc_alloc_init(NSMutableString);
  v8 = v7;
  v9 = *bytes;
  if (*bytes)
  {
    [v7 appendFormat:@"%@UnderVoltageShutdown", @"|"];
    v9 = *bytes;
    if ((*bytes & 2) == 0)
    {
LABEL_5:
      if ((v9 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*bytes & 2) == 0)
  {
    goto LABEL_5;
  }

  [v8 appendFormat:@"%@OverTempShutdown", @"|"];
  v9 = *bytes;
  if ((*bytes & 4) == 0)
  {
LABEL_6:
    if ((v9 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v8 appendFormat:@"%@PowerOnReset", @"|"];
  v9 = *bytes;
  if ((*bytes & 8) == 0)
  {
LABEL_7:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v8 appendFormat:@"%@SystemReset", @"|"];
  v9 = *bytes;
  if ((*bytes & 0x10) == 0)
  {
LABEL_8:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v8 appendFormat:@"%@NACKTimeout", @"|"];
  v9 = *bytes;
  if ((*bytes & 0x20) == 0)
  {
LABEL_9:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    [v8 appendFormat:@"%@ShortResetPulse", @"|"];
    if ((*bytes & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_18:
  [v8 appendFormat:@"%@SPMITargetCommandOff", @"|"];
  v9 = *bytes;
  if ((*bytes & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  [v8 appendFormat:@"%@SOCWatchdog", @"|"];
LABEL_11:
  v10 = [v8 length];
  v11 = *bytes;
  if (v10)
  {
    v12 = [v8 substringFromIndex:{objc_msgSend(@"|", "length")}];
    v13 = [NSString stringWithFormat:@"0x%02x-%@", v11, v12];
  }

  else
  {
    v13 = [NSString stringWithFormat:@"0x%02x-NoFaults", v11];
  }

LABEL_22:

  return v13;
}

- (id)getPowerStats:(BOOL)stats
{
  statsCopy = stats;
  [NSData dataWithBytes:&statsCopy length:1];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10001D084() sendCommand:? gid:? oid:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];
    if (v7 == 1016)
    {
      bytes = [v6 bytes];
      v9 = +[NSMutableDictionary dictionary];
      v10 = [NSNumber numberWithUnsignedLongLong:*bytes];
      sub_10001D040();

      v11 = [NSNumber numberWithUnsignedLongLong:bytes[1]];
      sub_10001D040();

      v12 = [NSNumber numberWithUnsignedLongLong:bytes[2]];
      sub_10001D040();

      v13 = [NSNumber numberWithUnsignedLongLong:bytes[3]];
      sub_10001D040();

      v14 = [NSNumber numberWithUnsignedLongLong:bytes[4]];
      sub_10001D040();

      v15 = [NSNumber numberWithUnsignedLongLong:bytes[5]];
      sub_10001D040();

      v16 = [NSNumber numberWithUnsignedLongLong:bytes[6]];
      sub_10001D040();

      v17 = [NSNumber numberWithUnsignedLongLong:bytes[7]];
      sub_10001D040();

      v18 = [NSNumber numberWithUnsignedLongLong:bytes[8]];
      sub_10001D040();

      v19 = [NSNumber numberWithUnsignedLongLong:bytes[9]];
      sub_10001D040();

      v20 = [NSNumber numberWithUnsignedLongLong:bytes[10]];
      sub_10001D040();

      v21 = [NSNumber numberWithUnsignedLongLong:bytes[11]];
      sub_10001D040();

      v22 = [NSNumber numberWithUnsignedLongLong:bytes[12]];
      sub_10001D040();

      v23 = [NSNumber numberWithUnsignedLongLong:bytes[13]];
      sub_10001D040();

      v24 = [NSNumber numberWithUnsignedLongLong:bytes[14]];
      sub_10001D040();

      v25 = [NSNumber numberWithUnsignedLongLong:bytes[15]];
      sub_10001D040();

      v26 = [NSNumber numberWithUnsignedLongLong:bytes[16]];
      sub_10001D040();

      v27 = [NSNumber numberWithUnsignedLongLong:bytes[17]];
      sub_10001D040();

      v28 = [NSNumber numberWithUnsignedLongLong:bytes[18]];
      sub_10001D040();

      v29 = [NSNumber numberWithUnsignedLongLong:bytes[19]];
      sub_10001D040();

      v30 = [NSNumber numberWithUnsignedLongLong:bytes[20]];
      sub_10001D040();

      v31 = [NSNumber numberWithUnsignedLongLong:bytes[21]];
      sub_10001D040();

      v32 = [NSNumber numberWithUnsignedLongLong:bytes[22]];
      sub_10001D040();

      v33 = [NSNumber numberWithUnsignedLongLong:bytes[23]];
      sub_10001D040();

      v34 = [NSNumber numberWithUnsignedLongLong:bytes[24]];
      sub_10001D040();

      v35 = [NSNumber numberWithUnsignedLongLong:bytes[25]];
      sub_10001D040();

      v36 = [NSNumber numberWithUnsignedLongLong:bytes[26]];
      sub_10001D040();

      v37 = [NSNumber numberWithUnsignedLongLong:bytes[27]];
      sub_10001D040();

      v38 = [NSNumber numberWithUnsignedLongLong:bytes[28]];
      sub_10001D040();

      v39 = [NSNumber numberWithUnsignedLongLong:bytes[29]];
      sub_10001D040();

      v40 = [NSNumber numberWithUnsignedLongLong:bytes[30]];
      sub_10001D040();

      v41 = [NSNumber numberWithUnsignedLongLong:bytes[31]];
      sub_10001D040();

      v42 = [NSNumber numberWithUnsignedLongLong:bytes[32]];
      [v9 setObject:v42 forKey:@"PCIeL3Duration"];
    }

    else
    {
      v42 = sub_100025204(v7);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [sub_100004684() length];
        *buf = 138543874;
        v47 = v44;
        sub_10001D058();
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected response size %lu", buf, 0x20u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end