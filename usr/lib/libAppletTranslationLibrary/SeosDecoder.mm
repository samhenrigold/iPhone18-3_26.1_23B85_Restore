@interface SeosDecoder
+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (id)resolveServiceProvider:(unsigned __int8)provider;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation SeosDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v74[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v12 = [eventCopy length];
  if (v12 > 1)
  {
    v23 = *[eventCopy bytes];
    bytes = [eventCopy bytes];
    v25 = *(bytes + 1);
    if (v25 == 1)
    {
      v26 = ATLLogObject(bytes);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Legacy SEOS, punting", buf, 2u);
      }

      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Legacy SEOS, punting"];
      v15 = v27;
      if (!error)
      {
        goto LABEL_33;
      }

      v28 = *error;
      v29 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v67[0] = *MEMORY[0x277CCA450];
        v67[1] = v30;
        v68[0] = v27;
        v68[1] = v28;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v68;
        v33 = v67;
        v34 = 2;
      }

      else
      {
        v69 = *MEMORY[0x277CCA450];
        v70 = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v70;
        v33 = &v69;
        v34 = 1;
      }

      v41 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      v42 = v29;
      v43 = 2;
      goto LABEL_32;
    }

    v35 = [eventCopy length];
    if (v35 > 9)
    {
      if (v23 == 1 && v25 == 255)
      {
        v40 = [SeosDecoder parseStartEvent:eventCopy withApplet:appletCopy error:error];
      }

      else
      {
        if (v23 != 2 || v25 != 255)
        {
          v46 = ATLLogObject(v35);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v60 = v23;
            v61 = 1024;
            v62 = v25;
            _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
          }

          v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v23, v25];
          v15 = v47;
          if (!error)
          {
            goto LABEL_33;
          }

          v48 = *error;
          v49 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v50 = *MEMORY[0x277CCA7E8];
            v55[0] = *MEMORY[0x277CCA450];
            v55[1] = v50;
            v56[0] = v47;
            v56[1] = v48;
            v51 = MEMORY[0x277CBEAC0];
            v52 = v56;
            v53 = v55;
            v54 = 2;
          }

          else
          {
            v57 = *MEMORY[0x277CCA450];
            v58 = v47;
            v51 = MEMORY[0x277CBEAC0];
            v52 = &v58;
            v53 = &v57;
            v54 = 1;
          }

          v41 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:v54];
          v42 = v49;
          v43 = 3;
          goto LABEL_32;
        }

        v40 = [SeosDecoder parseEndEvent:eventCopy withApplet:appletCopy error:error];
      }

      v44 = v40;
      goto LABEL_34;
    }

    v36 = ATLLogObject(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v60 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v15 = v37;
    if (!error)
    {
      goto LABEL_33;
    }

    v38 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v39 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v39;
      v64[0] = v37;
      v64[1] = v38;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v64;
      v21 = v63;
      goto LABEL_7;
    }

    v65 = *MEMORY[0x277CCA450];
    v66 = v37;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v66;
    v21 = &v65;
LABEL_24:
    v22 = 1;
    goto LABEL_25;
  }

  v13 = ATLLogObject(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v60 = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
  v15 = v14;
  if (!error)
  {
    goto LABEL_33;
  }

  v16 = *error;
  v17 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v73 = *MEMORY[0x277CCA450];
    v74[0] = v14;
    v19 = MEMORY[0x277CBEAC0];
    v20 = v74;
    v21 = &v73;
    goto LABEL_24;
  }

  v18 = *MEMORY[0x277CCA7E8];
  v71[0] = *MEMORY[0x277CCA450];
  v71[1] = v18;
  v72[0] = v14;
  v72[1] = v16;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v72;
  v21 = v71;
LABEL_7:
  v22 = 2;
LABEL_25:
  v41 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
  v42 = v17;
  v43 = 6;
LABEL_32:
  *error = [v42 errorWithDomain:@"ATL" code:v43 userInfo:v41];

LABEL_33:
  v44 = 0;
LABEL_34:

  return v44;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "SeosDecoder doesn't support GetState", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SeosDecoder doesn't support GetState"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v21[0] = *MEMORY[0x277CCA450];
      v21[1] = v13;
      v22[0] = v9;
      v22[1] = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v9;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v18];
  }

  return 0;
}

+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v9 = [eventCopy length];
  if (v9 != 10)
  {
    v17 = ATLLogObject(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v12 = v18;
    if (error)
    {
      v19 = *error;
      v20 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v21 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v21;
        v50[0] = v18;
        v50[1] = v19;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v50;
        v24 = v49;
        v25 = 2;
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52[0] = v18;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v52;
        v24 = &v51;
        v25 = 1;
      }

      v13 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
      v36 = v20;
      v37 = 6;
      goto LABEL_19;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_21;
  }

  bytes = [eventCopy bytes];
  v11 = bytes;
  if ((~*(bytes + 5) & 0xA580) != 0)
  {
    v26 = ATLLogObject(bytes);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(v11 + 5);
      *buf = 67109376;
      v46 = v27;
      v47 = 1024;
      v48 = 42368;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Unexpected cmd of StartEvent %u (exp) %u", buf, 0xEu);
    }

    42368 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected cmd of StartEvent %u (exp) %u", *(v11 + 5), 42368];
    v12 = 42368;
    if (error)
    {
      v29 = *error;
      v30 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v41[0] = *MEMORY[0x277CCA450];
        v41[1] = v31;
        v42[0] = 42368;
        v42[1] = v29;
        v32 = MEMORY[0x277CBEAC0];
        v33 = v42;
        v34 = v41;
        v35 = 2;
      }

      else
      {
        v43 = *MEMORY[0x277CCA450];
        v44 = 42368;
        v32 = MEMORY[0x277CBEAC0];
        v33 = &v44;
        v34 = &v43;
        v35 = 1;
      }

      v13 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
      v36 = v30;
      v37 = 3;
LABEL_19:
      [v36 errorWithDomain:@"ATL" code:v37 userInfo:v13];
      *error = v16 = 0;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v39[0] = @"EventType";
  v39[1] = @"appletIdentifier";
  v40[0] = @"StartEvent";
  v40[1] = appletCopy;
  v39[2] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v40[2] = v12;
  v39[3] = @"command";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v11 + 5))];
  v40[3] = v13;
  v39[4] = @"selectStatus";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v11 + 2)) >> 16];
  v40[4] = v14;
  v39[5] = @"spIdentifier";
  v15 = [SeosDecoder resolveServiceProvider:*(v11 + 9)];
  v39[6] = @"IgnoreRFEvents";
  v39[7] = @"DontWaitForEOT";
  v40[5] = v15;
  v40[6] = MEMORY[0x277CBEC38];
  v40[7] = MEMORY[0x277CBEC38];
  v40[8] = MEMORY[0x277CBEC28];
  v39[8] = @"RequiresPowerCycle";
  v39[9] = @"DelayExpressReentry";
  v40[9] = &unk_2843C7208;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:10];

LABEL_20:
LABEL_21:

  return v16;
}

+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v107[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v9 = [eventCopy length];
  if (v9 <= 0x30)
  {
    v10 = ATLLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [eventCopy length];
      *&buf[12] = 2048;
      *&buf[14] = 49;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End event length %zu (exp) %zu", buf, 0x16u);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 49];
    v12 = v11;
    if (!error)
    {
      goto LABEL_41;
    }

    v13 = *error;
    v14 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v104[0] = *MEMORY[0x277CCA450];
      v104[1] = v15;
      v105[0] = v11;
      v105[1] = v13;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v105;
      v18 = v104;
LABEL_29:
      v46 = 2;
LABEL_40:
      v59 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v46];
      *error = [v14 errorWithDomain:@"ATL" code:3 userInfo:v59];

LABEL_41:
      v60 = 0;
      goto LABEL_42;
    }

    v106 = *MEMORY[0x277CCA450];
    v107[0] = v11;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v107;
    v18 = &v106;
    goto LABEL_39;
  }

  bytes = [eventCopy bytes];
  v20 = bytes;
  v21 = *(bytes + 40);
  if (v21 != 1 && v21 != 0x4000)
  {
    v36 = ATLLogObject(bytes);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(v20 + 40);
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Unexpected Transaction Status %d", buf, 8u);
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transaction Status %d", *(v20 + 40)];
    v12 = v38;
    if (!error)
    {
      goto LABEL_41;
    }

    v39 = *error;
    v14 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v40 = *MEMORY[0x277CCA7E8];
      v100[0] = *MEMORY[0x277CCA450];
      v100[1] = v40;
      v101[0] = v38;
      v101[1] = v39;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v101;
      v18 = v100;
      goto LABEL_29;
    }

    v102 = *MEMORY[0x277CCA450];
    v103 = v38;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v103;
    v18 = &v102;
LABEL_39:
    v46 = 1;
    goto LABEL_40;
  }

  if ((*(bytes + 42) | 0x2000) != 0x2002)
  {
    v41 = ATLLogObject(bytes);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v20 + 42);
      *buf = 67109120;
      *&buf[4] = v42;
      _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Unexpected Informative %d", buf, 8u);
    }

    v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Informative %d", *(v20 + 42)];
    v12 = v43;
    if (!error)
    {
      goto LABEL_41;
    }

    v44 = *error;
    v14 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v45 = *MEMORY[0x277CCA7E8];
      v96[0] = *MEMORY[0x277CCA450];
      v96[1] = v45;
      v97[0] = v43;
      v97[1] = v44;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v97;
      v18 = v96;
      goto LABEL_29;
    }

    v98 = *MEMORY[0x277CCA450];
    v99 = v43;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v99;
    v18 = &v98;
    goto LABEL_39;
  }

  v12 = [eventCopy subdataWithRange:{49, objc_msgSend(eventCopy, "length") - 49}];
  v76[0] = [v12 bytes];
  v76[1] = [v12 length];
  memset(buf, 0, sizeof(buf));
  v22 = DERDecodeItemCtx(v76, buf);
  v23 = v22;
  if (v22 || *buf != 0xE000000000000001)
  {
    v47 = ATLLogObject(v22);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *v93 = 67109376;
      *&v93[4] = v23;
      LOWORD(v94[0]) = 2048;
      *(v94 + 2) = *buf;
      _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v93, 0x12u);
    }

    v48 = objc_alloc(MEMORY[0x277CCACA8]);
    v49 = [v48 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v23, *buf];
    v50 = v49;
    if (error)
    {
      v51 = *error;
      v52 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v53 = *MEMORY[0x277CCA7E8];
        v89[0] = *MEMORY[0x277CCA450];
        v89[1] = v53;
        v90[0] = v49;
        v90[1] = v51;
        v54 = MEMORY[0x277CBEAC0];
        v55 = v90;
        v56 = v89;
        v57 = 2;
      }

      else
      {
        v91 = *MEMORY[0x277CCA450];
        v92 = v49;
        v54 = MEMORY[0x277CBEAC0];
        v55 = &v92;
        v56 = &v91;
        v57 = 1;
      }

      v62 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:v57];
      *error = [v52 errorWithDomain:@"ATL" code:3 userInfo:v62];
    }

    goto LABEL_41;
  }

  *v93 = 0;
  v94[0] = 0;
  v24 = DERParseSequenceSpec(&buf[8], &seosE1TLVSpec, v93, 0x10uLL);
  if (!v24)
  {
    if (v94[0])
    {
      v58 = [SeosDecoder resolveServiceProvider:**v93];
    }

    else
    {
      v58 = @"ABSENT";
    }

    v75 = v58;
    v80 = v58;
    v81 = @"State";
    v79 = @"SP";
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v82 = v64;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];

    v67 = *(v20 + 40) != 0x4000 || *(v20 + 2) != 144 || *(v20 + 42) != 2;
    v77[0] = @"EventType";
    v77[1] = @"appletIdentifier";
    v78[0] = @"EndEvent";
    v78[1] = appletCopy;
    v77[2] = @"Version";
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 1)];
    v78[2] = v74;
    v77[3] = @"didError";
    v68 = [MEMORY[0x277CCABB0] numberWithBool:v67];
    v78[3] = v68;
    v77[4] = @"command";
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v20 + 4))];
    v78[4] = v69;
    v77[5] = @"status";
    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 2)) >> 16];
    v78[5] = v70;
    v77[6] = @"result";
    if (v67)
    {
      v71 = 256;
    }

    else
    {
      v71 = 64;
    }

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v71];
    v78[6] = v72;
    v77[7] = @"informative";
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 42)) >> 16];
    v78[7] = v73;
    v78[8] = &unk_2843C7220;
    v77[8] = @"type";
    v77[9] = @"tlv";
    v77[10] = @"parsedInfo";
    v78[9] = v12;
    v78[10] = v63;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:11];

    v28 = v75;
    goto LABEL_65;
  }

  v25 = v24;
  v26 = ATLLogObject(v24);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v87 = 67109120;
    v88 = v25;
    _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v87, 8u);
  }

  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v25];
  v28 = v27;
  if (error)
  {
    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v83[0] = *MEMORY[0x277CCA450];
      v83[1] = v31;
      v84[0] = v27;
      v84[1] = v29;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v84;
      v34 = v83;
      v35 = 2;
    }

    else
    {
      v85 = *MEMORY[0x277CCA450];
      v86 = v27;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v86;
      v34 = &v85;
      v35 = 1;
    }

    v63 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    [v30 errorWithDomain:@"ATL" code:3 userInfo:v63];
    *error = v60 = 0;
LABEL_65:

    goto LABEL_66;
  }

  v60 = 0;
LABEL_66:

LABEL_42:

  return v60;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C7208;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:{2, transceiver, error}];

  return v7;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "SEOS decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SEOS decoder doesn't expect processEndOfTransaction"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v21[0] = *MEMORY[0x277CCA450];
      v21[1] = v13;
      v22[0] = v9;
      v22[1] = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v9;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v18];
  }

  return 0;
}

+ (id)resolveServiceProvider:(unsigned __int8)provider
{
  providerCopy = provider;
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = &unk_2843C7238;
  v11[0] = @"HID";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:providerCopy];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    providerCopy = v6;
  }

  else
  {
    providerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", providerCopy];
  }

  v8 = providerCopy;

  return v8;
}

@end