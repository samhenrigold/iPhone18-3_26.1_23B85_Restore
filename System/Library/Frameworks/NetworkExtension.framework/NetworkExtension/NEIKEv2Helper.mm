@interface NEIKEv2Helper
+ (NEIKEv2ChildSAProposal)createIKEv2ChildSAProposalFromProtocol:(void *)protocol saParameters:;
+ (NEIKEv2IKESAProposal)createIKESAProposalFromProtocol:(void *)protocol saParameters:(void *)parameters options:(unsigned int *)options nonceSize:;
+ (id)createRouteArrayFromTunnelConfig:(void *)config localTS:(void *)s remoteTS:(void *)tS gatewayAddress:(int)address isIPv4:;
+ (uint64_t)copyAdditionalKEMProtocolsForSAParameters:(uint64_t)parameters;
+ (uint64_t)getIdentifierType:(uint64_t)type;
@end

@implementation NEIKEv2Helper

+ (uint64_t)getIdentifierType:(uint64_t)type
{
  v2 = a2;
  objc_opt_self();
  if ([v2 rangeOfString:@".+@.+\\..+" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v2 rangeOfString:@"^[1-2]?[0-9]{1 options:{2}\\.[1-2]?[0-9]{1, 2}\\.[1-2]?[0-9]{1, 2}\\.[1-2]?[0-9]{1, 2}$", 1024}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 rangeOfString:@"^(:|(([0-9A-Fa-f]{1 options:{4}):)){1, 7}[0-9A-Fa-f]{1, 4}$", 1024}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = 2;
      }

      else
      {
        v3 = 5;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

+ (id)createRouteArrayFromTunnelConfig:(void *)config localTS:(void *)s remoteTS:(void *)tS gatewayAddress:(int)address isIPv4:
{
  v76 = *MEMORY[0x1E69E9840];
  v9 = a2;
  configCopy = config;
  sCopy = s;
  tSCopy = tS;
  objc_opt_self();
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v71;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v71 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v70 + 1) + 8 * i);
      if (address)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v16 = [NEIPv4Route alloc];
        address = [v15 address];
        hostname = [address hostname];
        subnetMaskAddress = [v15 subnetMaskAddress];
        hostname2 = [subnetMaskAddress hostname];
        v21 = [(NEIPv4Route *)v16 initWithDestinationAddress:hostname subnetMask:hostname2];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v22 = [NEIPv6Route alloc];
        address = [v15 address];
        hostname = [address hostname];
        subnetMaskAddress = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v15, "prefix")}];
        v21 = [(NEIPv6Route *)v22 initWithDestinationAddress:hostname networkPrefixLength:subnetMaskAddress];
      }

      [(NEIPv4Route *)v21 setGatewayAddress:tSCopy];
      [v62 addObject:v21];
      ++v12;
    }

    v11 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  }

  while (v11);
LABEL_16:

  if (address)
  {
    v23 = 7;
  }

  else
  {
    v23 = 8;
  }

  v24 = @"::";
  if (address)
  {
    v24 = @"0.0.0.0";
    v25 = @"255.255.255.255";
  }

  else
  {
    v25 = @"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff";
  }

  v57 = v24;
  v56 = v25;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v26 = sCopy;
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v27)
  {
    v28 = v27;
    v59 = 0;
    v61 = 0;
    v29 = *v67;
    v58 = *v67;
LABEL_24:
    v30 = 0;
    while (1)
    {
      if (*v67 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v66 + 1) + 8 * v30);
      if ([(NEIKEv2TrafficSelector *)v31 type]!= v23)
      {
        goto LABEL_48;
      }

      startAddress = [v31 startAddress];
      hostname3 = [startAddress hostname];
      if (hostname3)
      {
        v34 = hostname3;
        v35 = v26;
        endAddress = [v31 endAddress];
        hostname4 = [endAddress hostname];

        if (hostname4)
        {
          startAddress2 = [v31 startAddress];
          hostname5 = [startAddress2 hostname];

          endAddress2 = [v31 endAddress];
          hostname6 = [endAddress2 hostname];

          v26 = v35;
          if (hostname5 && hostname6 && (objc_msgSend_isEqualToString_(hostname5) && objc_msgSend_isEqualToString_(hostname6) || objc_msgSend_isEqualToString_(hostname5, configCopy) && objc_msgSend_isEqualToString_(hostname6)))
          {
            if (!v12)
            {
              v52 = off_1E7F04C50;
              if (!address)
              {
                v52 = off_1E7F04C60;
              }

              defaultRoute = [(__objc2_class *)*v52 defaultRoute];
              [v62 addObject:defaultRoute];

              v49 = v62;
              v51 = v62;

              goto LABEL_59;
            }
          }

          else
          {
            v42 = NEGetPrefixForAddressRangeStrings(hostname5, hostname6);
            if (v42)
            {
              v43 = v42;
              if (!address)
              {
                v47 = [NEIPv6Route alloc];
                v48 = [MEMORY[0x1E696AD98] numberWithInt:v43];
                v45 = [(NEIPv6Route *)v47 initWithDestinationAddress:hostname5 networkPrefixLength:v48];

                v26 = v35;
                [(NEIPv6Route *)v45 setGatewayAddress:tSCopy];
                [v62 addObject:v45];
                goto LABEL_47;
              }

              v44 = NECreateIPv4AddressMaskStringFromPrefix(v42);
              if (v44)
              {
                v45 = v44;
                v46 = [[NEIPv4Route alloc] initWithDestinationAddress:hostname5 subnetMask:v44];
                [(NEIPv4Route *)v46 setGatewayAddress:tSCopy];
                [v62 addObject:v46];

LABEL_47:
                v29 = v58;

                ++v12;
                v59 = hostname5;
                v61 = hostname6;
                goto LABEL_48;
              }
            }
          }

          v59 = hostname5;
          v61 = hostname6;
        }

        else
        {
          v26 = v35;
        }

        v29 = v58;
      }

      else
      {
      }

LABEL_48:
      if (v28 == ++v30)
      {
        v28 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
        if (v28)
        {
          goto LABEL_24;
        }

        goto LABEL_52;
      }
    }
  }

  v59 = 0;
  v61 = 0;
LABEL_52:

  v49 = v62;
  if (v12)
  {
    v50 = v62;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;
  hostname5 = v59;
  hostname6 = v61;
LABEL_59:

  return v51;
}

+ (uint64_t)copyAdditionalKEMProtocolsForSAParameters:(uint64_t)parameters
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  postQuantumKeyExchangeMethods = [v2 postQuantumKeyExchangeMethods];
  v4 = [postQuantumKeyExchangeMethods count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = postQuantumKeyExchangeMethods;
    v6 = postQuantumKeyExchangeMethods;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = 6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          intValue = [*(*(&v19 + 1) + 8 * i) intValue];
          if (intValue)
          {
            v13 = [[NEIKEv2KEMProtocol alloc] initWithMethod:intValue];
            v23 = v13;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
            [v5 setObject:v14 forKeyedSubscript:v15];
          }

          ++v10;
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
    }

    else
    {
      v16 = 0;
    }

    postQuantumKeyExchangeMethods = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (NEIKEv2IKESAProposal)createIKESAProposalFromProtocol:(void *)protocol saParameters:(void *)parameters options:(unsigned int *)options nonceSize:
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a2;
  protocolCopy = protocol;
  parametersCopy = parameters;
  objc_opt_self();
  if (protocolCopy)
  {
    v10 = objc_alloc_init(NEIKEv2IKESAProposal);
    -[NEIKEv2IKESAProposal setLifetimeSeconds:](v10, "setLifetimeSeconds:", (60 * [protocolCopy lifetimeMinutes]));
    encryptionAlgorithm = [protocolCopy encryptionAlgorithm];
    v12 = [NEIKEv2EncryptionProtocol alloc];
    v42 = v8;
    if (encryptionAlgorithm > 3)
    {
      if (encryptionAlgorithm > 5)
      {
        if (encryptionAlgorithm == 6)
        {
          v13 = 5;
          goto LABEL_17;
        }

        if (encryptionAlgorithm == 7)
        {
          v13 = 6;
          goto LABEL_17;
        }
      }

      else if (encryptionAlgorithm != 4)
      {
        v13 = 4;
LABEL_17:
        v17 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionType:v13, v8];
        v18 = 0;
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    switch(encryptionAlgorithm)
    {
      case 1:
        v16 = 2;
        break;
      case 2:
        v16 = 3;
        break;
      case 3:
        v14 = 2;
LABEL_14:
        v15 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionType:v14, v8];
LABEL_20:
        v17 = v15;
        v18 = 1;
LABEL_21:
        v48 = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:{1, v42}];
        [(NEIKEv2IKESAProposal *)v10 setEncryptionProtocols:v19];

        integrityAlgorithm = [protocolCopy integrityAlgorithm];
        if (integrityAlgorithm > 3)
        {
          if (integrityAlgorithm == 4)
          {
            v21 = 6;
            if (v18)
            {
              v22 = 13;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (integrityAlgorithm == 5)
          {
            v21 = 7;
            if (v18)
            {
              v22 = 14;
              goto LABEL_36;
            }

LABEL_37:
            v23 = 0;
LABEL_38:
            v24 = [[NEIKEv2PRFProtocol alloc] initWithType:v21];
            v47 = v24;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
            [(NEIKEv2IKESAProposal *)v10 setPrfProtocols:v25];

            nonceSize = [(NEIKEv2PRFProtocol *)v24 nonceSize];
            if (v18)
            {
              v46 = v23;
              v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
              [(NEIKEv2IKESAProposal *)v10 setIntegrityProtocols:v27];
            }

            if (options && nonceSize > *options)
            {
              *options = nonceSize;
            }

            v28 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [protocolCopy diffieHellmanGroup]);
            v45 = v28;
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            [(NEIKEv2IKESAProposal *)v10 setKemProtocols:v29];

            v30 = [NEIKEv2Helper copyAdditionalKEMProtocolsForSAParameters:protocolCopy];
            [(NEIKEv2IKESAProposal *)v10 setAdditionalKEMProtocols:v30];

            v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v8 = v43;
            if ([v43 useExtendedAuthentication])
            {
              v32 = [parametersCopy objectForKeyedSubscript:@"AccountName"];
              if (v32)
              {
                [parametersCopy objectForKeyedSubscript:@"AccountName"];
              }

              else
              {
                [v43 username];
              }
              v33 = ;

              if (v33)
              {
                identityReferenceInternal = [v43 identityReferenceInternal];

                if (identityReferenceInternal)
                {
                  v35 = [[NEIKEv2EAPProtocol alloc] initWithMethod:7];
                  [v31 addObject:v35];
                }

                v36 = [[NEIKEv2EAPProtocol alloc] initWithMethod:4];
                [v31 addObject:v36];
              }

              identityReferenceInternal2 = [v43 identityReferenceInternal];

              if (identityReferenceInternal2)
              {
                v38 = [[NEIKEv2EAPProtocol alloc] initWithMethod:6];
                [v31 addObject:v38];
              }

              if (![v31 count])
              {
                v41 = ne_log_obj();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, "missing eap protocol", buf, 2u);
                }

                v39 = 0;
                goto LABEL_56;
              }
            }

            else
            {
              v33 = [[NEIKEv2EAPProtocol alloc] initWithMethod:0];
              [v31 addObject:v33];
            }

            [(NEIKEv2IKESAProposal *)v10 setEapProtocols:v31];
            v39 = v10;
LABEL_56:

            goto LABEL_57;
          }
        }

        else
        {
          if (integrityAlgorithm == 1)
          {
            v21 = 2;
            if (v18)
            {
              v22 = 2;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (integrityAlgorithm == 2)
          {
            v21 = 2;
            if (v18)
            {
              v22 = 7;
LABEL_36:
              v23 = [[NEIKEv2IntegrityProtocol alloc] initWithType:v22];
              goto LABEL_38;
            }

            goto LABEL_37;
          }
        }

        v21 = 5;
        if (v18)
        {
          v22 = 12;
          goto LABEL_36;
        }

        goto LABEL_37;
      default:
LABEL_13:
        v14 = 3;
        goto LABEL_14;
    }

    v15 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionWireType:v16 keyLength:0];
    goto LABEL_20;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v50 = "+[NEIKEv2Helper createIKESAProposalFromProtocol:saParameters:options:nonceSize:]";
    _os_log_fault_impl(&dword_1BA83C000, &v10->super, OS_LOG_TYPE_FAULT, "%s called with null saParameters", buf, 0xCu);
  }

  v39 = 0;
LABEL_57:

  return v39;
}

+ (NEIKEv2ChildSAProposal)createIKEv2ChildSAProposalFromProtocol:(void *)protocol saParameters:
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  protocolCopy = protocol;
  objc_opt_self();
  if (protocolCopy)
  {
    v6 = objc_alloc_init(NEIKEv2ChildSAProposal);
    [(NEIKEv2ChildSAProposal *)v6 setProtocol:3];
    -[NEIKEv2ChildSAProposal setLifetimeSeconds:](v6, "setLifetimeSeconds:", (60 * [protocolCopy lifetimeMinutes]));
    encryptionAlgorithm = [protocolCopy encryptionAlgorithm];
    v8 = [NEIKEv2EncryptionProtocol alloc];
    if (encryptionAlgorithm <= 4)
    {
      switch(encryptionAlgorithm)
      {
        case 1:
          v11 = 2;
          break;
        case 2:
          v11 = 3;
          break;
        case 3:
          v9 = 2;
LABEL_14:
          v12 = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionType:v9];
LABEL_17:
          p_super = &v12->super;
          v14 = 1;
LABEL_20:
          v27 = p_super;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
          [(NEIKEv2ChildSAProposal *)v6 setEncryptionProtocols:v15];

          if (v14)
          {
            integrityAlgorithm = [protocolCopy integrityAlgorithm];
            v17 = [NEIKEv2IntegrityProtocol alloc];
            if ((integrityAlgorithm - 1) > 4)
            {
              v18 = 12;
            }

            else
            {
              v18 = qword_1BAA4F928[integrityAlgorithm - 1];
            }

            v19 = [(NEIKEv2IntegrityProtocol *)v17 initWithType:v18];
            v26 = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
            [(NEIKEv2ChildSAProposal *)v6 setIntegrityProtocols:v20];
          }

          if ([v4 enablePFS])
          {
            v21 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [protocolCopy diffieHellmanGroup]);
            v25 = v21;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
            [(NEIKEv2ChildSAProposal *)v6 setKemProtocols:v22];

            v23 = [NEIKEv2Helper copyAdditionalKEMProtocolsForSAParameters:protocolCopy];
            [(NEIKEv2ChildSAProposal *)v6 setAdditionalKEMProtocols:v23];
          }

          goto LABEL_27;
        default:
LABEL_13:
          v9 = 3;
          goto LABEL_14;
      }

      v12 = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionWireType:v11 keyLength:0];
      goto LABEL_17;
    }

    switch(encryptionAlgorithm)
    {
      case 5:
        v10 = 4;
        break;
      case 6:
        v10 = 5;
        break;
      case 7:
        v10 = 6;
        break;
      default:
        goto LABEL_13;
    }

    p_super = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionType:v10];
    v14 = 0;
    goto LABEL_20;
  }

  p_super = ne_log_obj();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v29 = "+[NEIKEv2Helper createIKEv2ChildSAProposalFromProtocol:saParameters:]";
    _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "%s called with null saParameters", buf, 0xCu);
  }

  v6 = 0;
LABEL_27:

  return v6;
}

@end