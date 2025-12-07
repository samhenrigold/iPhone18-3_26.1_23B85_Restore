@interface NSData(CBOR)
+ (id)dataWithCBOR:()CBOR encodingKeyOrder:;
@end

@implementation NSData(CBOR)

+ (id)dataWithCBOR:()CBOR encodingKeyOrder:
{
  v86[16] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 tag];

  if (v6)
  {
    v7 = [v5 tag];
    objc_opt_self();
    unsignedLongLongValue = [v7 unsignedLongLongValue];

    if (HIDWORD(unsignedLongLongValue))
    {
      LOBYTE(v81) = -37;
      v86[0] = bswap64(unsignedLongLongValue);
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
      [v6 appendBytes:&v81 length:1];
      v9 = v86;
      v10 = v6;
      v11 = 8;
    }

    else if (unsignedLongLongValue < 0x10000)
    {
      if (unsignedLongLongValue < 0x100)
      {
        if (unsignedLongLongValue > 0x17)
        {
          LOBYTE(v81) = -40;
          LOBYTE(v86[0]) = unsignedLongLongValue;
          v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:2];
          [v6 appendBytes:&v81 length:1];
          v9 = v86;
          v10 = v6;
        }

        else
        {
          LOBYTE(v81) = unsignedLongLongValue | 0xC0;
          v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:1];
          v6 = v10;
          v9 = &v81;
        }

        v11 = 1;
      }

      else
      {
        LOBYTE(v81) = -39;
        LOWORD(v86[0]) = bswap32(unsignedLongLongValue) >> 16;
        v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
        [v6 appendBytes:&v81 length:1];
        v9 = v86;
        v10 = v6;
        v11 = 2;
      }
    }

    else
    {
      LOBYTE(v81) = -38;
      LODWORD(v86[0]) = bswap32(unsignedLongLongValue);
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
      [v6 appendBytes:&v81 length:1];
      v9 = v86;
      v10 = v6;
      v11 = 4;
    }

    [v10 appendBytes:v9 length:v11];
  }

  switch([v5 type])
  {
    case 0:
      unsignedLongLongValue2 = [v5 unsignedLongLongValue];
      objc_opt_self();
      if (HIDWORD(unsignedLongLongValue2))
      {
        LOBYTE(v81) = 27;
        v31 = bswap64(unsignedLongLongValue2);
        goto LABEL_37;
      }

      if (unsignedLongLongValue2 >= 0x10000)
      {
        LOBYTE(v81) = 26;
        v44 = bswap32(unsignedLongLongValue2);
        goto LABEL_59;
      }

      if (unsignedLongLongValue2 >= 0x100)
      {
        LOBYTE(v81) = 25;
        v45 = bswap32(unsignedLongLongValue2);
        goto LABEL_70;
      }

      if (unsignedLongLongValue2 <= 0x17)
      {
        LOBYTE(v81) = unsignedLongLongValue2;
        goto LABEL_79;
      }

      LOBYTE(v81) = 24;
      LOBYTE(v86[0]) = unsignedLongLongValue2;
      goto LABEL_106;
    case 1:
      longLongValue = [v5 longLongValue];
      objc_opt_self();
      v33 = ~longLongValue;
      if (longLongValue > 0xFFFFFFFEFFFFFFFFLL)
      {
        if (longLongValue > 0xFFFFFFFFFFFEFFFFLL)
        {
          if (longLongValue > 0xFFFFFFFFFFFFFEFFLL)
          {
            if (longLongValue < 0xFFFFFFFFFFFFFFE8)
            {
              LOBYTE(v81) = 56;
              LOBYTE(v86[0]) = ~longLongValue;
LABEL_106:
              v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:2];
              [v15 appendBytes:&v81 length:1];
              v34 = v86;
              v35 = v15;
            }

            else
            {
              LOBYTE(v81) = 31 - longLongValue;
LABEL_79:
              v35 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:1];
              v15 = v35;
              v34 = &v81;
            }

            v36 = 1;
          }

          else
          {
            LOBYTE(v81) = 57;
            v45 = bswap32(v33);
LABEL_70:
            LOWORD(v86[0]) = HIWORD(v45);
            v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
            [v15 appendBytes:&v81 length:1];
            v34 = v86;
            v35 = v15;
            v36 = 2;
          }
        }

        else
        {
          LOBYTE(v81) = 58;
          v44 = bswap32(v33);
LABEL_59:
          LODWORD(v86[0]) = v44;
          v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
          [v15 appendBytes:&v81 length:1];
          v34 = v86;
          v35 = v15;
          v36 = 4;
        }
      }

      else
      {
        LOBYTE(v81) = 59;
        v31 = bswap64(v33);
LABEL_37:
        v86[0] = v31;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
        [v15 appendBytes:&v81 length:1];
        v34 = v86;
        v35 = v15;
        v36 = 8;
      }

      [v35 appendBytes:v34 length:v36];
      if (!v6)
      {
        goto LABEL_109;
      }

      goto LABEL_123;
    case 2:
      data = [v5 data];
      goto LABEL_39;
    case 3:
      data = [v5 string];
LABEL_39:
      v12 = data;
      v15 = [CBOR encodeMajorType2or3:data];
      goto LABEL_122;
    case 4:
      array = [v5 array];
      objc_opt_self();
      v15 = objc_opt_new();
      [array count];
      if ([array count] >> 32)
      {
        LOBYTE(v80[0]) = -101;
        v86[0] = bswap64([array count]);
        [v15 appendBytes:v80 length:1];
        v38 = v86;
        v39 = v15;
        v40 = 8;
      }

      else if ([array count] < 0x10000)
      {
        if ([array count] < 0x100)
        {
          if ([array count] < 0x18)
          {
            LOBYTE(v80[0]) = [array count] ^ 0x80;
            v38 = v80;
          }

          else
          {
            LOBYTE(v80[0]) = -104;
            LOBYTE(v86[0]) = [array count];
            [v15 appendBytes:v80 length:1];
            v38 = v86;
          }

          v39 = v15;
          v40 = 1;
        }

        else
        {
          LOBYTE(v80[0]) = -103;
          LOWORD(v86[0]) = bswap32([array count]) >> 16;
          [v15 appendBytes:v80 length:1];
          v38 = v86;
          v39 = v15;
          v40 = 2;
        }
      }

      else
      {
        LOBYTE(v80[0]) = -102;
        LODWORD(v86[0]) = bswap32([array count]);
        [v15 appendBytes:v80 length:1];
        v38 = v86;
        v39 = v15;
        v40 = 4;
      }

      [v39 appendBytes:v38 length:v40];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v12 = array;
      v69 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v82;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v82 != v71)
            {
              objc_enumerationMutation(v12);
            }

            v73 = [MEMORY[0x277CBEA90] dataWithCBOR:*(*(&v81 + 1) + 8 * i)];
            [v15 appendData:v73];
          }

          v70 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v70);
      }

      goto LABEL_122;
    case 5:
      v25 = v5;
      objc_opt_self();
      dictionary = [v25 dictionary];
      v15 = objc_opt_new();
      [dictionary count];
      if ([dictionary count] >> 32)
      {
        v85 = -69;
        v86[0] = bswap64([dictionary count]);
        [v15 appendBytes:&v85 length:1];
        v27 = v86;
        v28 = v15;
        v29 = 8;
      }

      else if ([dictionary count] < 0x10000)
      {
        if ([dictionary count] < 0x100)
        {
          if ([dictionary count] < 0x18)
          {
            v85 = [dictionary count] - 96;
            v27 = &v85;
          }

          else
          {
            v85 = -72;
            LOBYTE(v86[0]) = [dictionary count];
            [v15 appendBytes:&v85 length:1];
            v27 = v86;
          }

          v28 = v15;
          v29 = 1;
        }

        else
        {
          v85 = -71;
          LOWORD(v86[0]) = bswap32([dictionary count]) >> 16;
          [v15 appendBytes:&v85 length:1];
          v27 = v86;
          v28 = v15;
          v29 = 2;
        }
      }

      else
      {
        v85 = -70;
        LODWORD(v86[0]) = bswap32([dictionary count]);
        [v15 appendBytes:&v85 length:1];
        v27 = v86;
        v28 = v15;
        v29 = 4;
      }

      [v28 appendBytes:v27 length:v29];
      orderedKeys = [v25 orderedKeys];

      if (orderedKeys)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        orderedKeys2 = [v25 orderedKeys];
        v48 = [orderedKeys2 countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (!v48)
        {
          goto LABEL_102;
        }

        v49 = v48;
        v78 = v25;
        v79 = v5;
        v50 = *v82;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v82 != v50)
            {
              objc_enumerationMutation(orderedKeys2);
            }

            v52 = *(*(&v81 + 1) + 8 * j);
            v53 = [MEMORY[0x277CBEA90] dataWithCBOR:v52];
            [v15 appendData:v53];

            v54 = MEMORY[0x277CBEA90];
            v55 = [dictionary objectForKey:v52];
            v56 = [v54 dataWithCBOR:v55];
            [v15 appendData:v56];
          }

          v49 = [orderedKeys2 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v49);
      }

      else
      {
        v78 = v25;
        v79 = v5;
        allKeys = [dictionary allKeys];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __51__CBOR_Encoder__encodeMajorType5_encodingKeyOrder___block_invoke;
        v80[3] = &__block_descriptor_40_e23_q24__0__CBOR_8__CBOR_16l;
        v80[4] = a4;
        v58 = [allKeys sortedArrayUsingComparator:v80];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        orderedKeys2 = v58;
        v59 = [orderedKeys2 countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v82;
          do
          {
            for (k = 0; k != v60; ++k)
            {
              if (*v82 != v61)
              {
                objc_enumerationMutation(orderedKeys2);
              }

              v63 = *(*(&v81 + 1) + 8 * k);
              v64 = [MEMORY[0x277CBEA90] dataWithCBOR:v63];
              [v15 appendData:v64];

              v65 = MEMORY[0x277CBEA90];
              v66 = [dictionary objectForKey:v63];
              v67 = [v65 dataWithCBOR:v66];
              [v15 appendData:v67];
            }

            v60 = [orderedKeys2 countByEnumeratingWithState:&v81 objects:v86 count:16];
          }

          while (v60);
        }
      }

      v25 = v78;
      v5 = v79;
LABEL_102:

      if (!v6)
      {
        goto LABEL_109;
      }

      goto LABEL_123;
    case 6:
    case 7:
    case 8:
      v12 = v5;
      objc_opt_self();
      LOBYTE(v81) = 0;
      value = [v12 value];
      objc_opt_class();
      objc_opt_isKindOfClass();

      value2 = [v12 value];
      if ([v12 valueSize] == 2 && objc_msgSend(v12, "type") == 6)
      {
        LOBYTE(v81) = -7;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
        [v15 appendBytes:&v81 length:1];
        [value2 doubleValue];
        LOWORD(v86[0]) = 0;
        v16 = v15;
        v17 = 2;
LABEL_25:
        [v16 appendBytes:v86 length:v17];
        goto LABEL_27;
      }

      if ([v12 valueSize] == 4 && objc_msgSend(v12, "type") == 7)
      {
        LOBYTE(v81) = -6;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
        [v15 appendBytes:&v81 length:1];
        [value2 floatValue];
        LODWORD(v86[0]) = bswap32(v18);
        v16 = v15;
        v17 = 4;
        goto LABEL_25;
      }

      if ([v12 valueSize] == 8 && objc_msgSend(v12, "type") == 8)
      {
        LOBYTE(v81) = -5;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
        [v15 appendBytes:&v81 length:1];
        [value2 doubleValue];
        v86[0] = bswap64(v21);
        v16 = v15;
        v17 = 8;
        goto LABEL_25;
      }

      v15 = 0;
LABEL_27:

LABEL_122:
      if (v6)
      {
LABEL_123:
        v74 = objc_autoreleasePoolPush();
        v75 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v6];
        v76 = v75;
        if (v15)
        {
          [v75 appendData:v15];
        }

        v68 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v76];

        objc_autoreleasePoolPop(v74);
      }

      else
      {
LABEL_109:
        if (!v15)
        {
LABEL_110:
          v15 = objc_opt_new();
        }

        v15 = v15;
        v68 = v15;
      }

      return v68;
    case 9:
      v22 = 0;
      goto LABEL_41;
    case 10:
      v22 = 1;
LABEL_41:
      v20 = [CBOR encodeMajorType7Bool:v22];
      goto LABEL_49;
    case 11:
      objc_opt_self();
      v23 = -10;
      goto LABEL_47;
    case 12:
    case 16:
      v19 = CBOR;
      goto LABEL_21;
    case 13:
      longLongValue2 = [v5 longLongValue];
      v19 = objc_opt_self();
      if (longLongValue2 > 0x1F)
      {
        if (longLongValue2 - 32 > 0xDF)
        {
LABEL_21:
          v20 = +[(CBOR *)v19];
          goto LABEL_49;
        }

        LOBYTE(v86[0]) = -8;
        BYTE1(v86[0]) = longLongValue2;
        v42 = objc_alloc(MEMORY[0x277CBEA90]);
        v43 = 2;
      }

      else
      {
        v23 = longLongValue2 | 0xE0;
LABEL_47:
        LOBYTE(v86[0]) = v23;
        v42 = objc_alloc(MEMORY[0x277CBEA90]);
        v43 = 1;
      }

      v20 = [v42 initWithBytes:v86 length:v43];
LABEL_49:
      v15 = v20;
      if (!v6)
      {
        goto LABEL_109;
      }

      goto LABEL_123;
    case 15:
      objc_opt_self();
      v23 = -1;
      goto LABEL_47;
    default:
      if (!v6)
      {
        goto LABEL_110;
      }

      v15 = 0;
      goto LABEL_123;
  }
}

@end