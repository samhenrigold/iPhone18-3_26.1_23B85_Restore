@interface BMDeviceBluetooth
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBluetooth)initWithAddress:(id)address name:(id)name productID:(id)d starting:(id)starting deviceType:(int)type batteryLevelHeadphoneCase:(id)case batteryLevelHeadphoneRight:(id)right batteryLevelHeadphoneLeft:(id)self0 appleAudioDevice:(id)self1 userWearing:(id)self2 vendorID:(id)self3;
- (BMDeviceBluetooth)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceBluetooth

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBluetooth *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"address" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productID" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneCase" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneRight" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneLeft" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appleAudioDevice" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userWearing" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"vendorID" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v13;
  v15[6] = v7;
  v15[7] = v8;
  v15[8] = v14;
  v15[9] = v9;
  v15[10] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(BMDeviceBluetooth *)self address];
    address2 = [v5 address];
    v8 = address2;
    if (address == address2)
    {
    }

    else
    {
      address3 = [(BMDeviceBluetooth *)self address];
      address4 = [v5 address];
      v11 = [address3 isEqual:address4];

      if (!v11)
      {
        goto LABEL_52;
      }
    }

    name = [(BMDeviceBluetooth *)self name];
    name2 = [v5 name];
    v15 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMDeviceBluetooth *)self name];
      name4 = [v5 name];
      v18 = [name3 isEqual:name4];

      if (!v18)
      {
        goto LABEL_52;
      }
    }

    if (!-[BMDeviceBluetooth hasProductID](self, "hasProductID") && ![v5 hasProductID] || -[BMDeviceBluetooth hasProductID](self, "hasProductID") && objc_msgSend(v5, "hasProductID") && (v19 = -[BMDeviceBluetooth productID](self, "productID"), v19 == objc_msgSend(v5, "productID")))
    {
      if (!-[BMDeviceBluetooth hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMDeviceBluetooth hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v20 = -[BMDeviceBluetooth starting](self, "starting"), v20 == objc_msgSend(v5, "starting")))
      {
        deviceType = [(BMDeviceBluetooth *)self deviceType];
        if (deviceType == [v5 deviceType])
        {
          if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneCase](self, "hasBatteryLevelHeadphoneCase") && ![v5 hasBatteryLevelHeadphoneCase] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneCase](self, "hasBatteryLevelHeadphoneCase") && objc_msgSend(v5, "hasBatteryLevelHeadphoneCase") && (v22 = -[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase"), v22 == objc_msgSend(v5, "batteryLevelHeadphoneCase")))
          {
            if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneRight](self, "hasBatteryLevelHeadphoneRight") && ![v5 hasBatteryLevelHeadphoneRight] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneRight](self, "hasBatteryLevelHeadphoneRight") && objc_msgSend(v5, "hasBatteryLevelHeadphoneRight") && (v23 = -[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight"), v23 == objc_msgSend(v5, "batteryLevelHeadphoneRight")))
            {
              if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneLeft](self, "hasBatteryLevelHeadphoneLeft") && ![v5 hasBatteryLevelHeadphoneLeft] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneLeft](self, "hasBatteryLevelHeadphoneLeft") && objc_msgSend(v5, "hasBatteryLevelHeadphoneLeft") && (v24 = -[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft"), v24 == objc_msgSend(v5, "batteryLevelHeadphoneLeft")))
              {
                if (!-[BMDeviceBluetooth hasAppleAudioDevice](self, "hasAppleAudioDevice") && ![v5 hasAppleAudioDevice] || -[BMDeviceBluetooth hasAppleAudioDevice](self, "hasAppleAudioDevice") && objc_msgSend(v5, "hasAppleAudioDevice") && (v25 = -[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice"), v25 == objc_msgSend(v5, "appleAudioDevice")))
                {
                  if (!-[BMDeviceBluetooth hasUserWearing](self, "hasUserWearing") && ![v5 hasUserWearing] || -[BMDeviceBluetooth hasUserWearing](self, "hasUserWearing") && objc_msgSend(v5, "hasUserWearing") && (v26 = -[BMDeviceBluetooth userWearing](self, "userWearing"), v26 == objc_msgSend(v5, "userWearing")))
                  {
                    if (!-[BMDeviceBluetooth hasVendorID](self, "hasVendorID") && ![v5 hasVendorID])
                    {
                      v12 = 1;
                      goto LABEL_53;
                    }

                    if (-[BMDeviceBluetooth hasVendorID](self, "hasVendorID") && [v5 hasVendorID])
                    {
                      vendorID = [(BMDeviceBluetooth *)self vendorID];
                      v12 = vendorID == [v5 vendorID];
LABEL_53:

                      goto LABEL_54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_52:
    v12 = 0;
    goto LABEL_53;
  }

  v12 = 0;
LABEL_54:

  return v12;
}

- (id)jsonDictionary
{
  v39[11] = *MEMORY[0x1E69E9840];
  address = [(BMDeviceBluetooth *)self address];
  name = [(BMDeviceBluetooth *)self name];
  if ([(BMDeviceBluetooth *)self hasProductID])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth productID](self, "productID")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasStarting])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth starting](self, "starting")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth deviceType](self, "deviceType")}];
  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneCase])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneRight])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight")}];
  }

  else
  {
    v37 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneLeft])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasAppleAudioDevice])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice")}];
  }

  else
  {
    v35 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasUserWearing])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth userWearing](self, "userWearing")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasVendorID])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceBluetooth vendorID](self, "vendorID")}];
  }

  else
  {
    v10 = 0;
  }

  v38[0] = @"address";
  null = address;
  if (!address)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v39[0] = null;
  v38[1] = @"name";
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v39[1] = null2;
  v38[2] = @"productID";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = address;
  v27 = null3;
  v39[2] = null3;
  v38[3] = @"starting";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = name;
  v26 = null4;
  v39[3] = null4;
  v38[4] = @"deviceType";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v25 = null5;
  v39[4] = null5;
  v38[5] = @"batteryLevelHeadphoneCase";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v39[5] = null6;
  v38[6] = @"batteryLevelHeadphoneRight";
  null7 = v37;
  if (!v37)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v39[6] = null7;
  v38[7] = @"batteryLevelHeadphoneLeft";
  null8 = v36;
  if (!v36)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v39[7] = null8;
  v38[8] = @"appleAudioDevice";
  null9 = v35;
  if (!v35)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"userWearing";
  null10 = v9;
  if (!v9)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null10;
  v38[10] = @"vendorID";
  null11 = v10;
  if (!v10)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null11;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_49;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v31)
  {
  }

  if (v32)
  {
    if (v33)
    {
      goto LABEL_63;
    }

LABEL_70:

    if (v34)
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (!v33)
  {
    goto LABEL_70;
  }

LABEL_63:
  if (v34)
  {
    goto LABEL_64;
  }

LABEL_71:

LABEL_64:

  return v30;
}

- (BMDeviceBluetooth)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v134[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"address"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v18 = 0;
          goto LABEL_69;
        }

        v103 = v6;
        errorCopy = error;
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v131 = *MEMORY[0x1E696A578];
        v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v132 = v109;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        v23 = v21;
        v10 = v22;
        v9 = 0;
        v18 = 0;
        *errorCopy = [v20 initWithDomain:v23 code:2 userInfo:v22];
        v6 = v103;
        goto LABEL_68;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"productID"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v109 = 0;
          v18 = 0;
          goto LABEL_68;
        }

        v110 = objc_alloc(MEMORY[0x1E696ABC0]);
        v104 = v6;
        errorCopy2 = error;
        v25 = *MEMORY[0x1E698F240];
        v129 = *MEMORY[0x1E696A578];
        v26 = v9;
        v27 = objc_alloc(MEMORY[0x1E696AEC0]);
        v84 = objc_opt_class();
        v28 = v27;
        v9 = v26;
        v29 = [v28 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v84, @"productID"];
        v130 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        error = v29;
        v31 = [v110 initWithDomain:v25 code:2 userInfo:v30];
        v109 = 0;
        v18 = 0;
        *errorCopy2 = v31;
        v6 = v104;
LABEL_67:

LABEL_68:
        goto LABEL_69;
      }

      v108 = v7;
      v11 = v8;
      v109 = v10;
    }

    else
    {
      v108 = v7;
      v109 = 0;
      v11 = v8;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v18 = 0;
          v30 = v12;
          v8 = v11;
          goto LABEL_66;
        }

        errorCopy3 = error;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = v10;
        v33 = *MEMORY[0x1E698F240];
        v127 = *MEMORY[0x1E696A578];
        v34 = v9;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v85 = objc_opt_class();
        v36 = v35;
        v9 = v34;
        v107 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v85, @"starting"];
        v128 = v107;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        v30 = v12;
        v38 = v33;
        v10 = v90;
        v39 = [v32 initWithDomain:v38 code:2 userInfo:v37];
        error = 0;
        v18 = 0;
        *errorCopy3 = v39;
        v8 = v11;
        v13 = v37;
LABEL_65:

LABEL_66:
        v7 = v108;
        goto LABEL_67;
      }

      v100 = v12;
      v106 = v12;
    }

    else
    {
      v100 = v12;
      v106 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    v13 = v8 = v11;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v102 = v6;
      errorCopy4 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v107 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v107 = 0;
            v18 = 0;
            v6 = v102;
            error = v106;
            v30 = v100;
            goto LABEL_65;
          }

          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = *MEMORY[0x1E698F240];
          v125 = *MEMORY[0x1E696A578];
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
          v126 = v77;
          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v78 = [v75 initWithDomain:v76 code:2 userInfo:?];
          v107 = 0;
          v18 = 0;
          *errorCopy4 = v78;
          v40 = v77;
          v6 = v102;
          goto LABEL_101;
        }

        v107 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBluetoothDeviceTypeFromString(v13)];
      }

      v6 = v102;
    }

    else
    {
      v107 = 0;
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneCase"];
    errorCopy5 = error;
    v101 = v40;
    if (!v40)
    {
      v99 = v9;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v99 = v9;
      v40 = 0;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v99 = v9;
      v40 = v40;
LABEL_43:
      v41 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneRight"];
      v94 = v40;
      v98 = v41;
      if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v105 = 0;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v105 = v42;
LABEL_46:
        v43 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneLeft"];
        v89 = v13;
        v92 = v43;
        if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v97 = 0;
LABEL_49:
          v45 = [dictionaryCopy objectForKeyedSubscript:@"appleAudioDevice"];
          v91 = v10;
          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v93 = 0;
                v18 = 0;
                v9 = v99;
                goto LABEL_61;
              }

              selfCopy4 = self;
              v72 = objc_alloc(MEMORY[0x1E696ABC0]);
              v73 = *MEMORY[0x1E698F240];
              v117 = *MEMORY[0x1E696A578];
              v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appleAudioDevice"];
              v118 = v48;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
              v74 = v73;
              v9 = v99;
              v93 = 0;
              v18 = 0;
              *errorCopy5 = [v72 initWithDomain:v74 code:2 userInfo:v46];
              goto LABEL_60;
            }

            v93 = v45;
          }

          else
          {
            v93 = 0;
          }

          v46 = [dictionaryCopy objectForKeyedSubscript:@"userWearing"];
          if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              selfCopy4 = self;
              v9 = v99;
              if (!errorCopy5)
              {
                v48 = 0;
                v18 = 0;
                goto LABEL_60;
              }

              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = *MEMORY[0x1E698F240];
              v115 = *MEMORY[0x1E696A578];
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userWearing"];
              v116 = v50;
              v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
              v81 = [v79 initWithDomain:v80 code:2 userInfo:v49];
              v48 = 0;
              v18 = 0;
              *errorCopy5 = v81;
              goto LABEL_59;
            }

            selfCopy4 = self;
            v48 = v46;
          }

          else
          {
            selfCopy4 = self;
            v48 = 0;
          }

          v49 = [dictionaryCopy objectForKeyedSubscript:@"vendorID"];
          if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy5)
              {
                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v88 = *MEMORY[0x1E698F240];
                v113 = *MEMORY[0x1E696A578];
                v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"vendorID"];
                v114 = v82;
                v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
                *errorCopy5 = [v112 initWithDomain:v88 code:2 userInfo:v83];
              }

              v50 = 0;
              v18 = 0;
              goto LABEL_59;
            }

            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          v18 = -[BMDeviceBluetooth initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:](selfCopy4, "initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:", v108, v99, v109, v106, [v107 intValue], v94, v105, v97, v93, v48, v50);
          selfCopy4 = v18;
LABEL_59:

          v9 = v99;
LABEL_60:
          self = selfCopy4;

          v10 = v91;
          v40 = v94;
LABEL_61:

          v30 = v100;
          error = v106;
          v13 = v89;
LABEL_62:

LABEL_63:
LABEL_64:

          goto LABEL_65;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v97 = v44;
          goto LABEL_49;
        }

        if (error)
        {
          v67 = v10;
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v119 = *MEMORY[0x1E696A578];
          v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryLevelHeadphoneLeft"];
          v120 = v93;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
          v70 = v68;
          v10 = v67;
          v40 = v94;
          v71 = v69;
          v9 = v99;
          v97 = 0;
          v18 = 0;
          *error = [v70 initWithDomain:v71 code:2 userInfo:v45];
          goto LABEL_61;
        }

        v97 = 0;
        v18 = 0;
        v9 = v99;
        v30 = v100;
LABEL_105:
        error = v106;
        goto LABEL_62;
      }

      if (error)
      {
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = v10;
        v62 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v63 = objc_alloc(MEMORY[0x1E696AEC0]);
        v87 = objc_opt_class();
        v64 = v63;
        v9 = v99;
        v97 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v87, @"batteryLevelHeadphoneRight"];
        v122 = v97;
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v66 = v62;
        v10 = v61;
        v40 = v94;
        v92 = v65;
        v105 = 0;
        v18 = 0;
        *errorCopy5 = [v60 initWithDomain:v66 code:2 userInfo:?];
        v30 = v100;
        goto LABEL_105;
      }

      v105 = 0;
      v18 = 0;
      v9 = v99;
      v30 = v100;
LABEL_103:
      error = v106;
      goto LABEL_63;
    }

    if (error)
    {
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v53 = v10;
      v54 = *MEMORY[0x1E698F240];
      v123 = *MEMORY[0x1E696A578];
      v55 = v9;
      v56 = objc_alloc(MEMORY[0x1E696AEC0]);
      v86 = objc_opt_class();
      v57 = v56;
      v9 = v55;
      v105 = [v57 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v86, @"batteryLevelHeadphoneCase"];
      v124 = v105;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v59 = v54;
      v10 = v53;
      v98 = v58;
      v40 = 0;
      v18 = 0;
      *errorCopy5 = [v52 initWithDomain:v59 code:2 userInfo:?];
      v30 = v100;
      goto LABEL_103;
    }

    v40 = 0;
    v18 = 0;
LABEL_101:
    v30 = v100;
    error = v106;
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    v18 = 0;
    goto LABEL_70;
  }

  errorCopy6 = error;
  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v133 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"address"];
  v134[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
  v7 = 0;
  v18 = 0;
  *errorCopy6 = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_69:

LABEL_70:
  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_address)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProductID)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStarting)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasBatteryLevelHeadphoneCase)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBatteryLevelHeadphoneRight)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = toCopy;
  if (self->_hasBatteryLevelHeadphoneLeft)
  {
    PBDataWriterWriteInt32Field();
    v4 = toCopy;
  }

  if (self->_hasAppleAudioDevice)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_hasUserWearing)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_hasVendorID)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v81.receiver = self;
  v81.super_class = BMDeviceBluetooth;
  v5 = [(BMEventBase *)&v81 init];
  if (!v5)
  {
    goto LABEL_153;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_151;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v82 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v82 & 0x7F) << v7;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_151;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        break;
      }

      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v36 = PBReaderReadString();
          v37 = 56;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_116:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }

          v36 = PBReaderReadString();
          v37 = 64;
        }

        v38 = *(&v5->super.super.isa + v37);
        *(&v5->super.super.isa + v37) = v36;
      }

      else
      {
        if (v15 == 3)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v5->_hasProductID = 1;
          while (1)
          {
            v82 = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v60 |= (v82 & 0x7F) << v58;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v13 = v59++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_133;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v60;
          }

LABEL_133:
          v77 = 32;
LABEL_146:
          *(&v5->super.super.isa + v77) = v22;
          goto LABEL_150;
        }

        if (v15 == 4)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v82 = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 |= (v82 & 0x7F) << v39;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v13 = v40++ >= 9;
            if (v13)
            {
              LOBYTE(v45) = 0;
              goto LABEL_119;
            }
          }

          v45 = (v41 != 0) & ~[fromCopy hasError];
LABEL_119:
          v76 = 17;
          goto LABEL_149;
        }

        if (v15 != 5)
        {
          goto LABEL_116;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v82 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v82 & 0x7F) << v23;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          if (v24++ > 8)
          {
            goto LABEL_128;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v25 > 0x32)
        {
LABEL_128:
          LODWORD(v25) = 0;
        }

        v5->_deviceType = v25;
      }

LABEL_150:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_151;
      }
    }

    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasAppleAudioDevice = 1;
        while (1)
        {
          v82 = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (v82 & 0x7F) << v70;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v13 = v71++ >= 9;
          if (v13)
          {
            LOBYTE(v45) = 0;
            goto LABEL_148;
          }
        }

        v45 = (v72 != 0) & ~[fromCopy hasError];
LABEL_148:
        v76 = 22;
        goto LABEL_149;
      }

      if (v15 == 10)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasUserWearing = 1;
        while (1)
        {
          v82 = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v82 & 0x7F) << v52;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            LOBYTE(v45) = 0;
            goto LABEL_125;
          }
        }

        v45 = (v54 != 0) & ~[fromCopy hasError];
LABEL_125:
        v76 = 24;
LABEL_149:
        *(&v5->super.super.isa + v76) = v45;
        goto LABEL_150;
      }

      if (v15 != 11)
      {
        goto LABEL_116;
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      v5->_hasVendorID = 1;
      while (1)
      {
        v82 = 0;
        v33 = [fromCopy position] + 1;
        if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v32 |= (v82 & 0x7F) << v30;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v13 = v31++ >= 9;
        if (v13)
        {
          v22 = 0;
          goto LABEL_141;
        }
      }

      if ([fromCopy hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }

LABEL_141:
      v77 = 52;
    }

    else
    {
      switch(v15)
      {
        case 6:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v5->_hasBatteryLevelHeadphoneCase = 1;
          while (1)
          {
            v82 = 0;
            v67 = [fromCopy position] + 1;
            if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v66 |= (v82 & 0x7F) << v64;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v13 = v65++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_145;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v66;
          }

LABEL_145:
          v77 = 40;
          break;
        case 7:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v5->_hasBatteryLevelHeadphoneRight = 1;
          while (1)
          {
            v82 = 0;
            v49 = [fromCopy position] + 1;
            if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v48 |= (v82 & 0x7F) << v46;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v13 = v47++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_123;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v48;
          }

LABEL_123:
          v77 = 44;
          break;
        case 8:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasBatteryLevelHeadphoneLeft = 1;
          while (1)
          {
            v82 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v82 & 0x7F) << v16;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_137;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_137:
          v77 = 48;
          break;
        default:
          goto LABEL_116;
      }
    }

    goto LABEL_146;
  }

LABEL_151:
  if ([fromCopy hasError])
  {
LABEL_152:
    v79 = 0;
  }

  else
  {
LABEL_153:
    v79 = v5;
  }

  return v79;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  address = [(BMDeviceBluetooth *)self address];
  name = [(BMDeviceBluetooth *)self name];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth productID](self, "productID")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth starting](self, "starting")}];
  v4 = BMDeviceBluetoothDeviceTypeAsString([(BMDeviceBluetooth *)self deviceType]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth userWearing](self, "userWearing")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceBluetooth vendorID](self, "vendorID")}];
  v16 = [v15 initWithFormat:@"BMDeviceBluetooth with address: %@, name: %@, productID: %@, starting: %@, deviceType: %@, batteryLevelHeadphoneCase: %@, batteryLevelHeadphoneRight: %@, batteryLevelHeadphoneLeft: %@, appleAudioDevice: %@, userWearing: %@, vendorID: %@", address, name, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v16;
}

- (BMDeviceBluetooth)initWithAddress:(id)address name:(id)name productID:(id)d starting:(id)starting deviceType:(int)type batteryLevelHeadphoneCase:(id)case batteryLevelHeadphoneRight:(id)right batteryLevelHeadphoneLeft:(id)self0 appleAudioDevice:(id)self1 userWearing:(id)self2 vendorID:(id)self3
{
  addressCopy = address;
  nameCopy = name;
  nameCopy2 = name;
  dCopy = d;
  startingCopy = starting;
  caseCopy = case;
  v21 = startingCopy;
  rightCopy = right;
  leftCopy = left;
  deviceCopy = device;
  wearingCopy = wearing;
  iDCopy = iD;
  v39.receiver = self;
  v39.super_class = BMDeviceBluetooth;
  v27 = [(BMEventBase *)&v39 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_address, address);
    objc_storeStrong(&v27->_name, nameCopy);
    if (dCopy)
    {
      v27->_hasProductID = 1;
      intValue = [dCopy intValue];
    }

    else
    {
      v27->_hasProductID = 0;
      intValue = -1;
    }

    v27->_productID = intValue;
    if (v21)
    {
      v27->_hasStarting = 1;
      v27->_starting = [v21 BOOLValue];
    }

    else
    {
      v27->_hasStarting = 0;
      v27->_starting = 0;
    }

    v27->_deviceType = type;
    if (caseCopy)
    {
      v27->_hasBatteryLevelHeadphoneCase = 1;
      intValue2 = [caseCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneCase = 0;
      intValue2 = -1;
    }

    v27->_batteryLevelHeadphoneCase = intValue2;
    if (rightCopy)
    {
      v27->_hasBatteryLevelHeadphoneRight = 1;
      intValue3 = [rightCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneRight = 0;
      intValue3 = -1;
    }

    v27->_batteryLevelHeadphoneRight = intValue3;
    if (leftCopy)
    {
      v27->_hasBatteryLevelHeadphoneLeft = 1;
      intValue4 = [leftCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneLeft = 0;
      intValue4 = -1;
    }

    v27->_batteryLevelHeadphoneLeft = intValue4;
    if (deviceCopy)
    {
      v27->_hasAppleAudioDevice = 1;
      v27->_appleAudioDevice = [deviceCopy BOOLValue];
    }

    else
    {
      v27->_hasAppleAudioDevice = 0;
      v27->_appleAudioDevice = 0;
    }

    if (wearingCopy)
    {
      v27->_hasUserWearing = 1;
      v27->_userWearing = [wearingCopy BOOLValue];
    }

    else
    {
      v27->_hasUserWearing = 0;
      v27->_userWearing = 0;
    }

    if (iDCopy)
    {
      v27->_hasVendorID = 1;
      unsignedIntValue = [iDCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v27->_hasVendorID = 0;
    }

    v27->_vendorID = unsignedIntValue;
  }

  return v27;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:2 type:13 subMessageClass:0];
  v15[1] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productID" number:3 type:2 subMessageClass:0];
  v15[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:4 type:12 subMessageClass:0];
  v15[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:5 type:4 subMessageClass:0];
  v15[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneCase" number:6 type:2 subMessageClass:0];
  v15[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneRight" number:7 type:2 subMessageClass:0];
  v15[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneLeft" number:8 type:2 subMessageClass:0];
  v15[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleAudioDevice" number:9 type:12 subMessageClass:0];
  v15[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userWearing" number:10 type:12 subMessageClass:0];
  v15[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vendorID" number:11 type:4 subMessageClass:0];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMDeviceBluetooth alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end