@interface MTRUnitTestingClusterTestStructArrayArgumentResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)init;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestStructArrayArgumentResponseParams

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)init
{
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v2 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v15 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = array;

    array2 = [MEMORY[0x277CBEA60] array];
    arg2 = v2->_arg2;
    v2->_arg2 = array2;

    array3 = [MEMORY[0x277CBEA60] array];
    arg3 = v2->_arg3;
    v2->_arg3 = array3;

    array4 = [MEMORY[0x277CBEA60] array];
    arg4 = v2->_arg4;
    v2->_arg4 = array4;

    arg5 = v2->_arg5;
    v2->_arg5 = &unk_284C3E4C8;

    arg6 = v2->_arg6;
    v2->_arg6 = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestStructArrayArgumentResponseParams);
  arg1 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg1];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg1:arg1];

  arg2 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg2];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg2:arg2];

  arg3 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg3];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg3:arg3];

  arg4 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg4];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg4:arg4];

  arg5 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg5];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg5:arg5];

  arg6 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg6];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg6:arg6];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ arg2:%@; arg3:%@; arg4:%@; arg5:%@; arg6:%@; >", v5, self->_arg1, self->_arg2, self->_arg3, self->_arg4, self->_arg5, self->_arg6];;

  return v6;
}

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v19 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v8, *(v18 + 8), *(v18 + 24));
    v9 = sub_2393C6FD0(v17, 256);
    if (!v9)
    {
      sub_2393C5AAC(v13);
      sub_2393C5ADC(v13, 0, 0);
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      sub_2393C5AAC(v15);
      sub_2393C5ADC(v15, 0, 0);
      sub_2393C5AAC(v16);
      sub_2393C5ADC(v16, 0, 0);
      v16[36] = 0;
      v9 = sub_238F2FEB4(v13, v17);
      if (!v9)
      {
        v9 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v11;
}

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v4 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v4 = objc_opt_new();
  structCopy = struct;
  v74 = v4;
  sub_238EA4A78(&v88, struct);
  while (2)
  {
    if (sub_238EA1A80(&v88) && sub_238EA4B40(&v88))
    {
      v5 = objc_opt_new();
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v91];
      [v5 setA:v6];

      v7 = [MEMORY[0x277CCABB0] numberWithBool:v92];
      [v5 setB:v7];

      v8 = objc_opt_new();
      [v5 setC:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v94];
      v10 = [v5 c];
      [v10 setA:v9];

      v11 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v94)];
      v12 = [v5 c];
      [v12 setB:v11];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v94)];
      v14 = [v5 c];
      [v14 setC:v13];

      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v95 length:v96];
      v16 = [v5 c];
      [v16 setD:v15];

      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v97 length:v98 encoding:4];
      v18 = [v5 c];
      [v18 setE:v17];

      v19 = [v5 c];
      v20 = [v19 e];

      if (v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v99)];
        v22 = [v5 c];
        [v22 setF:v21];

        LODWORD(v23) = HIDWORD(v99);
        v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
        v25 = [v5 c];
        [v25 setG:v24];

        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v100];
        v27 = [v5 c];
        [v27 setH:v26];

        if (v101[0] == 1)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v101, v28)->super.isa)}];
          v30 = [v5 c];
          [v30 setI:v29];
        }

        else
        {
          v29 = [v5 c];
          [v29 setI:0];
        }

        v31 = objc_opt_new();
        sub_238EA4C98(&v76, &v102);
        while (sub_238EA1A80(&v76) && sub_238EA4CF8(&v76))
        {
          v32 = objc_opt_new();
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
          [v32 setA:v33];

          v34 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v79)];
          [v32 setB:v34];

          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v79)];
          [v32 setC:v35];

          v36 = [MEMORY[0x277CBEA90] dataWithBytes:v80 length:v81];
          [v32 setD:v36];

          v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v82 length:v83 encoding:4];
          [v32 setE:v37];

          v38 = [v32 e];

          if (!v38)
          {

            v45 = 0xAE5100000000;
            v49 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
            v50 = 47;
            goto LABEL_36;
          }

          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v84];
          [v32 setF:v39];

          LODWORD(v40) = v85;
          v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
          [v32 setG:v41];

          v42 = [MEMORY[0x277CCABB0] numberWithDouble:v86];
          [v32 setH:v42];

          if (v87[0] == 1)
          {
            v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v87, v43)->super.isa)}];
            [v32 setI:v44];
          }

          else
          {
            [v32 setI:0];
          }

          [v31 addObject:v32];
        }

        if (v76 == 33 || (v45 = v76, !v76))
        {
          [v5 setD:v31];

          v31 = objc_opt_new();
          sub_2393C5AAC(v78);
          v76 = 0;
          v77 = 0;
          sub_2393C5BDC(v78, &v103);
          while (sub_238E72E88(&v76))
          {
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v79];
            [v31 addObject:v46];
          }

          if (v76 == 33 || (v45 = v76, !v76))
          {
            [v5 setE:v31];

            v31 = objc_opt_new();
            sub_2393C5AAC(v78);
            v76 = 0;
            v77 = 0;
            sub_2393C5BDC(v78, &v104);
            v79 = 0;
            v80 = 0;
            while (sub_238EA1A80(&v76) && sub_238EA49F4(&v76))
            {
              v47 = [MEMORY[0x277CBEA90] dataWithBytes:v79 length:v80];
              [v31 addObject:v47];
            }

            if (v76 == 33 || (v45 = v76, !v76))
            {
              [v5 setF:v31];

              v31 = objc_opt_new();
              sub_2393C5AAC(v78);
              v76 = 0;
              v77 = 0;
              sub_2393C5BDC(v78, &v105);
              while (sub_238E0D91C(&v76))
              {
                v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
                [v31 addObject:v48];
              }

              if (v76 == 33 || (v45 = v76, !v76))
              {
                [v5 setG:v31];

                [v74 addObject:v5];
                v4 = v74;
                continue;
              }
            }
          }
        }

        v49 = v77;
        v50 = v45;
LABEL_36:
      }

      else
      {
        v45 = 0xAE3900000000;
        v49 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v50 = 47;
      }

LABEL_38:
      v4 = v74;
    }

    else
    {
      if (v88 != 33)
      {
        v45 = v88;
        if (v88)
        {
          goto LABEL_42;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg1:v4];

      v74 = objc_opt_new();
      sub_238EA4C98(&v88, struct + 72);
      while (sub_238EA1A80(&v88) && sub_238EA4CF8(&v88))
      {
        v53 = objc_opt_new();
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v91];
        [v53 setA:v54];

        v55 = [MEMORY[0x277CCABB0] numberWithBool:v92];
        [v53 setB:v55];

        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v93];
        [v53 setC:v56];

        v57 = [MEMORY[0x277CBEA90] dataWithBytes:v94 length:v95];
        [v53 setD:v57];

        v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v96 length:v97 encoding:4];
        [v53 setE:v58];

        v59 = [v53 e];

        if (!v59)
        {

          v45 = 0xAEA800000000;
          v49 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
          v50 = 47;
          goto LABEL_38;
        }

        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v98];
        [v53 setF:v60];

        LODWORD(v61) = HIDWORD(v98);
        v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
        [v53 setG:v62];

        v63 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
        [v53 setH:v63];

        if (LOBYTE(v100) == 1)
        {
          v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(&v100, v64)->super.isa)}];
          [v53 setI:v65];
        }

        else
        {
          [v53 setI:0];
        }

        [v74 addObject:v53];
      }

      if (v88 != 33)
      {
        v45 = v88;
        if (v88)
        {
          goto LABEL_60;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg2:v74];

      v74 = objc_opt_new();
      sub_2393C5AAC(v90);
      v88 = 0;
      v89 = 0;
      sub_2393C5BDC(v90, struct + 144);
      while (sub_238E8A35C(&v88))
      {
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v91];
        [v74 addObject:v66];
      }

      if (v88 != 33)
      {
        v45 = v88;
        if (v88)
        {
LABEL_60:
          v49 = v89;
          v50 = v45;
          goto LABEL_38;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg3:v74];

      v4 = objc_opt_new();
      v75 = v4;
      sub_2393C5AAC(v90);
      v88 = 0;
      v89 = 0;
      sub_2393C5BDC(v90, struct + 216);
      while (1)
      {
        v67 = sub_238EA1A80(&v88);
        LODWORD(v68) = v88;
        if (v88)
        {
          v67 = 0;
        }

        if (!v67)
        {
          break;
        }

        v91 = 0;
        v68 = sub_2393C5CE4(v90, &v91);
        v88 = v68;
        v89 = v69;
        if (v68)
        {
          break;
        }

        v70 = [MEMORY[0x277CCABB0] numberWithBool:v91];
        [v75 addObject:v70];

        v4 = v75;
      }

      if (v68 != 33 && (v45 = v88, v88))
      {
LABEL_42:
        v49 = v89;
        v50 = v45;
      }

      else
      {
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg4:v4];

        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 288)];
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg5:v71];

        v4 = [MEMORY[0x277CCABB0] numberWithBool:structCopy[289]];
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg6:v4];
        v49 = 0;
        v45 = 0;
        v50 = 0;
      }
    }

    break;
  }

  v51 = v45 & 0xFFFFFFFF00000000 | v50;
  v52 = v49;
  result.mFile = v52;
  result.mError = v51;
  result.mLine = HIDWORD(v51);
  return result;
}

@end