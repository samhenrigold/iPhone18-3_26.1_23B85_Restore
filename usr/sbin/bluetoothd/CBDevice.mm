@interface CBDevice
- (CBDevice)initWithBTStackDevice:(void *)device error:(id *)error;
- (unint64_t)updateWithBLEDevice:(id)device btAddr:(unint64_t)addr;
- (unint64_t)updateWithClassicDevice:(void *)device deviceUUID:(id)d;
@end

@implementation CBDevice

- (CBDevice)initWithBTStackDevice:(void *)device error:(id *)error
{
  v21.receiver = self;
  v21.super_class = CBDevice;
  v6 = [(CBDevice *)&v21 init];
  if (!v6)
  {
    if (error)
    {
      v19 = [objc_opt_class() description];
      *error = CBErrorF(4294960540, "%@ super init failed", v19);
    }

    goto LABEL_13;
  }

  v7 = *(device + 128);
  v8 = *(device + 129);
  v9 = *(device + 130);
  v10 = *(device + 131);
  v11 = *(device + 133);
  v12 = (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (*(device + 132) << 8);
  v13 = v12 | v11;
  if (!(v12 | v11))
  {
    if (error)
    {
      CBErrorF(4294960535, "Get device address failed");
      *error = v17 = 0;
      goto LABEL_8;
    }

LABEL_13:
    v17 = 0;
    goto LABEL_8;
  }

  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v20[3] = v10;
  v20[4] = BYTE1(v12);
  v20[5] = v11;
  v14 = [[NSData alloc] initWithBytes:v20 length:6];
  [(CBDevice *)v6 setBtAddressData:v14];

  v22[0] = 0;
  v22[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  sub_1000498D4(off_100B508C8, v13, 1u, 1u, 0, 0, v22);
  v15 = sub_10004DF60(v22);
  uUIDString = [v15 UUIDString];
  if (uUIDString)
  {
    [(CBDevice *)v6 setIdentifier:uUIDString];
    v17 = v6;
  }

  else if (error)
  {
    CBErrorF(4294960588, "Get device identifier failed");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_8:
  return v17;
}

- (unint64_t)updateWithBLEDevice:(id)device btAddr:(unint64_t)addr
{
  deviceCopy = device;
  v197 = 0;
  v198 = &v197;
  v199 = 0x2020000000;
  v200 = 0;
  v193 = 0;
  v194 = &v193;
  v195 = 0x2020000000;
  v196 = 0;
  v189 = 0;
  v190 = &v189;
  v191 = 0x2020000000;
  v192 = 0;
  v185 = 0;
  v186 = &v185;
  v187 = 0x2020000000;
  v188 = 0;
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = sub_1000421C4;
  v171 = sub_100042574;
  v172 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = sub_1000421C4;
  v149 = sub_100042574;
  v150 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = sub_1000421C4;
  v139 = sub_100042574;
  v140 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_1000421C4;
  v133 = sub_100042574;
  v134 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = sub_1000421C4;
  v123 = sub_100042574;
  v124 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  v7 = off_100B508C8;
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_100105B3C;
  v84[3] = &unk_100AE05F8;
  v86 = &v197;
  v87 = &v181;
  v88 = &v177;
  v89 = &v189;
  v90 = &v185;
  v91 = &v167;
  v92 = &v163;
  v93 = &v159;
  v94 = &v155;
  v95 = &v151;
  v96 = &v145;
  v97 = &v141;
  v85 = deviceCopy;
  v98 = &v193;
  v99 = &v135;
  v100 = &v129;
  v101 = &v125;
  v102 = &v119;
  v103 = &v115;
  v104 = &v107;
  v105 = &v111;
  v106 = &v173;
  v81 = v85;
  sub_1000C320C(v7, v85, v84);
  if (*(v198 + 12) && (v8 = [(CBDevice *)self appearanceValue], v8 != *(v198 + 12)))
  {
    [(CBDevice *)self setAppearanceValue:?];
    v9 = 0x80000000000;
  }

  else
  {
    v9 = 0;
  }

  if ([v120[5] length] < 5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (!addr)
    {
      goto LABEL_18;
    }
  }

  else
  {
    bytes = [v120[5] bytes];
    v11 = *bytes;
    v12 = *(bytes + 1);
    v13 = *(bytes + 3);
    if (!addr)
    {
      goto LABEL_18;
    }
  }

  LOBYTE(v82) = BYTE5(addr);
  BYTE1(v82) = BYTE4(addr);
  BYTE2(v82) = BYTE3(addr);
  HIBYTE(v82) = BYTE2(addr);
  LOBYTE(v83) = BYTE1(addr);
  HIBYTE(v83) = addr;
  btAddressData = [(CBDevice *)self btAddressData];
  if ([btAddressData length] != 6 || ((v15 = objc_msgSend(btAddressData, "bytes"), v82 == *v15) ? (v16 = v83 == v15[2]) : (v16 = 0), !v16))
  {
    v17 = [[NSData alloc] initWithBytes:&v82 length:6];
    [(CBDevice *)self setBtAddressData:v17];

    v9 = 0x80000000000;
  }

LABEL_18:
  v18 = *(v194 + 24);
  if (!*(v194 + 24))
  {
    goto LABEL_30;
  }

  if (v18 > 0xE)
  {
    v19 = "?";
  }

  else
  {
    v19 = off_100AE0778[v18 - 1];
  }

  v20 = [NSString stringWithFormat:@"%s", v19, v81];
  btVersion = [(CBDevice *)self btVersion];
  v22 = v20;
  v23 = btVersion;
  v24 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    if ((v22 != 0) != (v23 == 0))
    {
      v25 = [v22 isEqual:v23];

      if (v25)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    [(CBDevice *)self setBtVersion:v22];
    v9 = 0x80000000000;
  }

LABEL_29:

LABEL_30:
  connectedServices = [(CBDevice *)self connectedServices];
  if (*(v182 + 24))
  {
    v27 = 0x400000;
  }

  else
  {
    v27 = 0;
  }

  if (qword_100B50920 != -1)
  {
    sub_100805764();
  }

  v28 = sub_1000E3EC8(qword_100B50918, v81);
  if (v28 && *(v152 + 24) == 1)
  {
    v29 = v27 | connectedServices & 0xFFBFFFFF | 0x10000;
  }

  else
  {
    v29 = v27 & 0xFFFEFFFF | connectedServices & 0xFFBEFFFF;
  }

  v30 = v29 & 0xFDFFFFFF;
  if (*(v112 + 24))
  {
    v31 = 0x2000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v31 | v30) != connectedServices)
  {
    [(CBDevice *)self setConnectedServices:?];
    v9 |= 0x80000200000uLL;
  }

  if (*(v178 + 12))
  {
    v32 = *(v178 + 12);
    if (v32 != [(CBDevice *)self interval])
    {
      [(CBDevice *)self setInterval:*(v178 + 12)];
      v9 |= 0x80000000000uLL;
    }
  }

  deviceFlags = [(CBDevice *)self deviceFlags];
  v34 = 0x20000000000;
  if (!*(v164 + 24))
  {
    v34 = 0;
  }

  if (*(v126 + 24))
  {
    v34 |= 0x2000uLL;
  }

  if (*(v190 + 24))
  {
    v35 = v34 | 0x200000;
  }

  else
  {
    v35 = v34;
  }

  if (*(v186 + 24))
  {
    v35 |= 0x8000uLL;
  }

  if (!*(v126 + 24) || (v108[3] & 1) != 0 || (deviceFlags & 0x4000) != 0)
  {
    v36 = v35 | 0x40000000000;
    if (v186[3])
    {
      goto LABEL_65;
    }
  }

  else
  {
    v36 = v35 & 0xFFFFFBFFFFFFFFFFLL;
    if (v186[3])
    {
      goto LABEL_65;
    }
  }

  if ((v142[3] & 1) == 0 && !*(v164 + 24))
  {
    v37 = v36 & 0xFFFFFFFFFFFFEFFFLL;
    goto LABEL_66;
  }

LABEL_65:
  v37 = v36 | 0x1000;
LABEL_66:
  if (*(v160 + 24) == 1)
  {
    v38 = 0x20000;
    if (!*(v156 + 24))
    {
      v38 = 0;
    }

    v39 = 0x10000;
    if (*(v156 + 24))
    {
      v39 = 0;
    }

    v37 = v38 | v39 | v37 & 0xFFFFFFFFFFFCFFFFLL;
  }

  if (v37 != deviceFlags)
  {
    [(CBDevice *)self setDeviceFlags:?];
    v9 |= 0x80000000000uLL;
  }

  if (*(v174 + 24))
  {
    v40 = *(v174 + 24);
    if (v40 != [(CBDevice *)self deviceType])
    {
      [(CBDevice *)self setDeviceType:*(v174 + 24)];
      v9 |= 0x80000000000uLL;
    }
  }

  v41 = v168[5];
  if (v41)
  {
    idsDeviceID = [(CBDevice *)self idsDeviceID];

    if (v41 != idsDeviceID)
    {
      [(CBDevice *)self setIdsDeviceID:v168[5]];
      v9 |= 0x80000000000uLL;
    }
  }

  if ([v146[5] length])
  {
    v43 = v146[5];
    firmwareVersion = [(CBDevice *)self firmwareVersion];
    v45 = v43;
    v46 = firmwareVersion;
    v47 = v46;
    if (v45 == v46)
    {

      goto LABEL_88;
    }

    if ((v45 != 0) == (v46 == 0))
    {
    }

    else
    {
      v48 = [v45 isEqual:v46];

      if (v48)
      {
        goto LABEL_88;
      }
    }

    [(CBDevice *)self setFirmwareVersion:v146[5]];
    v9 |= 0x80000000000uLL;
  }

LABEL_88:
  if (![v136[5] length])
  {
    goto LABEL_96;
  }

  v49 = v136[5];
  modelUser = [(CBDevice *)self modelUser];
  v51 = v49;
  v52 = modelUser;
  v53 = v52;
  if (v51 == v52)
  {

    goto LABEL_96;
  }

  if ((v51 != 0) == (v52 == 0))
  {

    goto LABEL_95;
  }

  v54 = [v51 isEqual:v52];

  if ((v54 & 1) == 0)
  {
LABEL_95:
    [(CBDevice *)self setModelUser:v136[5]];
    v9 |= 0x80000000000uLL;
  }

LABEL_96:
  if ([v130[5] length])
  {
    v55 = v130[5];
    name = [(CBDevice *)self name];
    v57 = v55;
    v58 = name;
    v59 = v58;
    if (v57 == v58)
    {
    }

    else
    {
      if ((v57 != 0) == (v58 == 0))
      {

        goto LABEL_105;
      }

      v60 = [v57 isEqual:v58];

      if ((v60 & 1) == 0)
      {
LABEL_105:
        [(CBDevice *)self setName:v130[5]];
        v9 |= 0x80000000000uLL;
        if (!v13)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_108;
  }

LABEL_106:
  if (v13 != [(CBDevice *)self productID])
  {
    [(CBDevice *)self setProductID:v13];
    v9 |= 0x80000000000uLL;
  }

LABEL_108:
  v61 = *(v116 + 6);
  if (v61 && v61 != [(CBDevice *)self bleRSSI])
  {
    [(CBDevice *)self setBleRSSI:*(v116 + 6)];
    v9 |= 0x200000000uLL;
  }

  supportedServices = [(CBDevice *)self supportedServices];
  if (v28)
  {
    v63 = 0x10000;
  }

  else
  {
    v63 = 0;
  }

  if (*(v112 + 24))
  {
    v64 = 0x2000000;
  }

  else
  {
    v64 = 0;
  }

  if ((supportedServices & 0xFDFEFFFF | v63 | v64) != [(CBDevice *)self supportedServices])
  {
    [(CBDevice *)self setSupportedServices:?];
  }

  if (v12 && [(CBDevice *)self vendorID]!= v12)
  {
    [(CBDevice *)self setVendorID:v12];
    v9 |= 0x80000000000uLL;
  }

  if (!v11)
  {
    goto LABEL_128;
  }

  if (v11 != [(CBDevice *)self vendorIDSource])
  {
    [(CBDevice *)self setVendorIDSource:v11];
    v9 |= 0x80000000000uLL;
  }

  if (v11 == 1 && v12 == 76)
  {
    v65 = 1;
  }

  else
  {
LABEL_128:
    v65 = v11 == 2 && v12 == 1452;
  }

  productID = [(CBDevice *)self productID];
  if (!productID)
  {
    productID = [(CBDevice *)self proximityPairingProductID];
  }

  if (productID != 0 && v65)
  {
    v68 = [CBProductInfo productInfoWithProductID:productID];
    productName = [v68 productName];

    if (productName)
    {
      productName2 = [(CBDevice *)self productName];
      v71 = productName;
      v72 = v71;
      if (productName2 == v71)
      {
      }

      else
      {
        if (productName2)
        {
          v73 = [productName2 isEqual:v71];

          if (v73)
          {
            goto LABEL_145;
          }
        }

        else
        {
        }

        [(CBDevice *)self setProductName:v72];
        v9 |= 0x80000000000uLL;
      }
    }

LABEL_145:
  }

  [(CBDevice *)self deviceType];
  v74 = CBDeviceTypeToNSLocalizedString();
  if (v65)
  {
    name2 = [(CBDevice *)self name];
    if (!name2 || (-[CBDevice name](self, "name"), v76 = objc_claimAutoreleasedReturnValue(), v77 = [v76 isEqualToString:v74], v76, name2, (v77 & 1) != 0))
    {
      v78 = sub_100106320(productID);
      if (v78)
      {
        [(CBDevice *)self setName:v78];
        v9 |= 0x80000000000uLL;
      }
    }
  }

  name3 = [(CBDevice *)self name];

  if (!name3)
  {
    [(CBDevice *)self setName:v74];
    v9 |= 0x80000000000uLL;
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);

  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v129, 8);

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v145, 8);

  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);

  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v177, 8);
  _Block_object_dispose(&v181, 8);
  _Block_object_dispose(&v185, 8);
  _Block_object_dispose(&v189, 8);
  _Block_object_dispose(&v193, 8);
  _Block_object_dispose(&v197, 8);

  return v9;
}

- (unint64_t)updateWithClassicDevice:(void *)device deviceUUID:(id)d
{
  dCopy = d;
  if (qword_100B508D0 != -1)
  {
    sub_10080578C();
  }

  v6 = off_100B508C8;
  if (qword_100B50AB0 != -1)
  {
    sub_1008057A0();
  }

  v7 = off_100B50AA8;
  if (qword_100B50AC0 != -1)
  {
    sub_1008057B4();
  }

  v8 = off_100B50AB8;
  v250 = sub_1000DFA00(off_100B50AB8, device);
  v243 = v7;
  v271 = 0;
  v272 = 0;
  v273 = 0;
  sub_1000DFC04(device, &v271);
  if (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3) < 4)
  {
    v253 = 0;
    v10 = 0;
LABEL_19:
    v252 = 0;
    goto LABEL_20;
  }

  v9 = v271 + 72;
  if (v271[95] < 0)
  {
    v9 = *v9;
  }

  v10 = [NSString stringWithUTF8String:v9];
  if (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3) < 9)
  {
    v253 = 0;
    goto LABEL_19;
  }

  v11 = v271 + 192;
  if (v271[215] < 0)
  {
    v11 = *v11;
  }

  v253 = [NSString stringWithUTF8String:v11];
  if (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3) < 0xA)
  {
    goto LABEL_19;
  }

  v12 = v271 + 216;
  if (v271[239] < 0)
  {
    v12 = *v12;
  }

  v252 = [NSString stringWithUTF8String:v12];
LABEL_20:
  v13 = [v10 length];
  v246 = v6;
  if (!v13)
  {
    v244 = 0;
    v242 = 0;
LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v14 = sub_1000DFED0(v6, v10);
  if (!v14)
  {
    v244 = 0;
    v16 = 0;
    v242 = 0;
LABEL_34:

    v22 = 0;
    v13 = v16;
    goto LABEL_38;
  }

  if (sub_10079096C(v6, v14))
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = sub_100790774(v6, v14);
  v242 = v15;
  if (sub_1007908B4(v6, v14) != 2)
  {
    v244 = 0;
    goto LABEL_34;
  }

  uUIDString = [v14 UUIDString];

  if (!uUIDString)
  {
    v244 = 0;
LABEL_36:
    v13 = v16;
    goto LABEL_37;
  }

  findMyCaseIdentifier = [(CBDevice *)self findMyCaseIdentifier];
  v19 = uUIDString;
  v20 = findMyCaseIdentifier;
  v14 = v20;
  v244 = v19;
  if (v19 == v20)
  {

    goto LABEL_34;
  }

  if (v20)
  {
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      goto LABEL_506;
    }

    goto LABEL_36;
  }

LABEL_506:
  [(CBDevice *)self setFindMyCaseIdentifier:v19];
  v13 = v16;
  v22 = 0x80000000000;
LABEL_38:
  v245 = v13;
  uUIDString2 = [v13 UUIDString];
  if (!uUIDString2)
  {
    goto LABEL_46;
  }

  findMyGroupIdentifier = [(CBDevice *)self findMyGroupIdentifier];
  v24 = uUIDString2;
  v25 = findMyGroupIdentifier;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_46;
  }

  if (!v25)
  {

    goto LABEL_45;
  }

  v27 = [v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_45:
    [(CBDevice *)self setFindMyGroupIdentifier:v24];
    v22 = 0x80000000000;
  }

LABEL_46:
  v269 = 0;
  v270 = 0;
  v247 = sub_1000C2364(device, &v270 + 1, &v270, &v269 + 1, &v269);
  v28 = *(device + 1570);
  if (v28 != [(CBDevice *)self aclLinkState])
  {
    [(CBDevice *)self setAclLinkState:v28];
    v22 = 0x80000000000;
  }

  v29 = sub_1000E00E4(device);
  if (v29 != [(CBDevice *)self adaptiveVolumeConfig])
  {
    [(CBDevice *)self setAdaptiveVolumeConfig:v29];
    v22 = 0x80000000000;
  }

  v30 = sub_1000E012C(device, 0x90u);
  v31 = v30;
  v33 = sub_10000C7D0(v30, v32);
  v34 = v31 & sub_1000E01B4(v33, 0);
  if (v34 == 1 && [(CBDevice *)self adaptiveVolumeCapability]!= 1)
  {
    [(CBDevice *)self setAdaptiveVolumeCapability:v34];
    v22 |= 0x80000000000uLL;
  }

  if (qword_100B50950 != -1)
  {
    sub_1008057C8();
  }

  v35 = sub_1000E0264(off_100B50948, device);
  if (v35 >= 3)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_1008057F0();
    }

    if (sub_1000E02E0(off_100B50AC8) == device)
    {
      v36 = 3;
    }

    else
    {
      if (qword_100B50AE0 != -1)
      {
        sub_100805818();
      }

      if (sub_1000E03B0(qword_100B50AD8, device))
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }
    }
  }

  else
  {
    v36 = dword_1008A2354[v35];
  }

  if (v36 != [(CBDevice *)self audioStreamState])
  {
    [(CBDevice *)self setAudioStreamState:v36];
    v22 |= 0x80000000000uLL;
  }

  v37 = sub_1000E012C(device, 0xB0u);
  v38 = v37;
  v40 = sub_10000C7D0(v37, v39);
  v41 = v38 & sub_1000E01B4(v40, 3);
  if (v41 == 1 && [(CBDevice *)self autoAncCapability]!= 1)
  {
    [(CBDevice *)self setAutoAncCapability:v41];
    v22 |= 0x80000000000uLL;
  }

  v267 = 0u;
  v268 = 0u;
  v248 = sub_1000C0348(device);
  if (v248 || *(device + 1360) == 1)
  {
    sub_1000DEB5C(device, &v267);
    v42 = v267;
    v43 = BYTE4(v267) << 8;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  if (v42 >= 100)
  {
    v44 = 100;
  }

  else
  {
    v44 = v42;
  }

  if ([(CBDevice *)self batteryInfoMain]!= (v43 | v44 & ~(v44 >> 31)))
  {
    [(CBDevice *)self setBatteryInfoMain:(v43 | v44 & ~(v44 >> 31))];
    v22 |= 0x80000000000uLL;
  }

  v45 = BYTE12(v267);
  if (SDWORD2(v267) >= 100)
  {
    v46 = 100;
  }

  else
  {
    v46 = DWORD2(v267);
  }

  if ([(CBDevice *)self batteryInfoLeft]!= (v46 & ~(v46 >> 31) | (v45 << 8)))
  {
    [(CBDevice *)self setBatteryInfoLeft:(v46 & ~(v46 >> 31) | (v45 << 8))];
    v22 |= 0x80000000000uLL;
  }

  v47 = BYTE4(v268);
  if (v268 >= 100)
  {
    v48 = 100;
  }

  else
  {
    v48 = v268;
  }

  if ([(CBDevice *)self batteryInfoRight]!= (v48 & ~(v48 >> 31) | (v47 << 8)))
  {
    [(CBDevice *)self setBatteryInfoRight:(v48 & ~(v48 >> 31) | (v47 << 8))];
    v22 |= 0x80000000000uLL;
  }

  v49 = BYTE12(v268);
  if (SDWORD2(v268) >= 100)
  {
    v50 = 100;
  }

  else
  {
    v50 = DWORD2(v268);
  }

  if ([(CBDevice *)self batteryInfoCase]!= (v50 & ~(v50 >> 31) | (v49 << 8)))
  {
    [(CBDevice *)self setBatteryInfoCase:(v50 & ~(v50 >> 31) | (v49 << 8))];
    v22 |= 0x80000000000uLL;
  }

  *v266 = *(device + 32);
  *&v266[4] = *(device + 66);
  if ((v266[0] << 40) | (v266[1] << 32) | (v266[2] << 24) | (v266[3] << 16) | (v266[4] << 8) | v266[5])
  {
    LOBYTE(v262) = v266[0];
    *(&v262 + 1) = *&v266[1];
    BYTE5(v262) = v266[5];
    btAddressData = [(CBDevice *)self btAddressData];
    if ([btAddressData length] != 6 || ((v52 = objc_msgSend(btAddressData, "bytes"), v262 == *v52) ? (v53 = WORD2(v262) == v52[2]) : (v53 = 0), !v53))
    {
      v54 = [[NSData alloc] initWithBytes:&v262 length:6];
      [(CBDevice *)self setBtAddressData:v54];

      v22 |= 0x80000000000uLL;
    }
  }

  v265 = 0;
  v263 = 0u;
  *v264 = 0u;
  v262 = 0u;
  sub_100007E30(v264, "");
  if (sub_1000E0610(device, &v262))
  {
    v55 = v263;
    if (v263)
    {
      v56 = v263 >> 4;
      if (v262 < 2u)
      {
        v57 = v263 & 0xF;
      }

      else
      {
        v57 = (v263 >> 20) & 0xFFF0 | v263 & 0xF;
        v56 = WORD2(v263) & 0xFFF0 | v56;
      }

      v58 = +[NSMutableString string];
      v59 = v58;
      if (v262 < 3u)
      {
        [v58 appendFormat:@"%u.%u.%u", (v55 >> 8), v56, v57];
      }

      else
      {
        LODWORD(v60) = (v56 + 65);
        if (v56 >= 0x1A)
        {
          v60 = 65;
        }

        else
        {
          v60 = v60;
        }

        [v58 appendFormat:@"%u%c%u", (v55 >> 8) / 0xAu, v60, v57];
        if (BYTE6(v55) - 1 <= 0x19)
        {
          [v59 appendFormat:@"%c", BYTE6(v55) | 0x60u];
        }
      }

      v61 = [v59 copy];
      if (v61)
      {
        caseVersion = [(CBDevice *)self caseVersion];
        v63 = [v61 isEqualToString:caseVersion];

        if ((v63 & 1) == 0)
        {
          [(CBDevice *)self setCaseVersion:v61];
          v22 |= 0x80000000000uLL;
        }
      }
    }
  }

  v64 = sub_1000E06A4(device);
  if (v64 != [(CBDevice *)self classicRSSI])
  {
    [(CBDevice *)self setClassicRSSI:v64];
    v22 |= 0x200000000uLL;
  }

  v65 = sub_1000E06EC(device);
  if ([(CBDevice *)self clickHoldModeLeft]!= HIBYTE(v65))
  {
    [(CBDevice *)self setClickHoldModeLeft:HIBYTE(v65)];
    v22 |= 0x80000000000uLL;
  }

  if ([(CBDevice *)self clickHoldModeRight]!= v65)
  {
    [(CBDevice *)self setClickHoldModeRight:v65];
    v22 |= 0x80000000000uLL;
  }

  v66 = sub_1000E0734(device);
  v67 = v66;
  v68 = v66 & 0xF;
  v251 = v10;
  if (v68 == 1)
  {
    v71 = v66 >> 4;
    v72 = (v66 >> 8) & 0xF;
    v69 = HIWORD(v66) & 0xF;
    v70 = (v66 << 12) & 0xF000000;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    if ((v66 & 0xF) != 0)
    {
      v72 = 0;
      v71 = 0;
    }

    else
    {
      v71 = v66 >> 4;
      v72 = (v66 >> 8) & 0xF;
    }
  }

  if (sub_1000E012C(device, 0x50u))
  {
    if (v67)
    {
      v73 = v72;
    }

    else
    {
      v73 = 2;
    }

    [(CBDevice *)self setCallMgmtMsg:v70 | (v69 << 32) | v68 | (v73 << 16) | (v71 << 8)];
    if ([(CBDevice *)self callMgmtMsg]== 1)
    {
      [(CBDevice *)self setMuteControlCapability:1];
    }

    else if (![(CBDevice *)self callMgmtMsg])
    {
      [(CBDevice *)self setEndCallCapability:1];
    }

    if (v73 && v73 != [(CBDevice *)self endCallConfig])
    {
      [(CBDevice *)self setEndCallConfig:v73];
      v22 |= 0x80000000000uLL;
    }

    if (v69 && v69 != [(CBDevice *)self muteControlConfig])
    {
      [(CBDevice *)self setMuteControlConfig:v69];
      v22 |= 0x80000000000uLL;
    }
  }

  v74 = device + 392;
  if (*(device + 415) < 0)
  {
    sub_100008904(__p, *(device + 49), *(device + 50));
  }

  else
  {
    *__p = *v74;
    v261 = *(device + 51);
  }

  if (SHIBYTE(v261) < 0)
  {
    v75 = __p[1];
    operator delete(__p[0]);
    if (!v75)
    {
      goto LABEL_162;
    }
  }

  else if (!HIBYTE(v261))
  {
    goto LABEL_162;
  }

  if (*(device + 415) < 0)
  {
    sub_100008904(__p, *(device + 49), *(device + 50));
  }

  else
  {
    *__p = *v74;
    v261 = *(device + 51);
  }

  if (v261 >= 0)
  {
    v76 = __p;
  }

  else
  {
    v76 = __p[0];
  }

  v77 = [NSString stringWithUTF8String:v76];
  if (SHIBYTE(v261) < 0)
  {
    operator delete(__p[0]);
  }

  model = [(CBDevice *)self model];

  if (v77 != model)
  {
    [(CBDevice *)self setModel:v77];
    v22 |= 0x80000000000uLL;
  }

LABEL_162:
  v79 = sub_1000E077C(v8, device);
  if (qword_100B50AA0 != -1)
  {
    sub_100805840();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v80 = sub_1000E1FE8(v266);
    if (v80 && !*(v80 + 54))
    {
      LODWORD(v79) = v79 | 0x800000;
    }

    v81 = sub_1000E2040(v266);
    sub_100022214(__p);
    if (v81)
    {
      v79 = v79 | 0x1000000;
    }

    else
    {
      v79 = v79;
    }

    sub_10002249C(__p);
  }

  if (v79 != [(CBDevice *)self connectedServices])
  {
    [(CBDevice *)self setConnectedServices:v79];
    v22 |= 0x80000200000uLL;
  }

  v82 = sub_1000E20B0(device);
  if (v82 != [(CBDevice *)self conversationDetectConfig])
  {
    [(CBDevice *)self setConversationDetectConfig:v82];
    v22 |= 0x80000000000uLL;
  }

  v83 = sub_1000E012C(device, 0xA0u);
  v84 = v83;
  v86 = sub_10000C7D0(v83, v85);
  v87 = v84 & sub_1000E01B4(v86, 2);
  if (v87 == 1 && [(CBDevice *)self conversationDetectCapability]!= 1)
  {
    [(CBDevice *)self setConversationDetectCapability:v87];
    v22 |= 0x80000000000uLL;
  }

  v88 = sub_1000E20F8(device);
  if (v88 != [(CBDevice *)self crownRotationDirection])
  {
    [(CBDevice *)self setCrownRotationDirection:v88];
    v22 |= 0x80000000000uLL;
  }

  deviceFlags = [(CBDevice *)self deviceFlags];
  v90 = sub_1000E2140(device, 0xCu);
  v91 = sub_1000E2140(device, 0x10u);
  v92 = *(device + 1016);
  v93 = *(device + 1032);
  v94 = sub_1000E2570(v243, device);
  v95 = sub_1000E2140(device, 0x1Bu);
  v96 = sub_1000E2140(device, 0x1Au);
  v97 = (v250 >> 19) & 1;
  if (v90)
  {
    v97 |= 0x1000000uLL;
  }

  if (v91)
  {
    v97 |= 0x4000000uLL;
  }

  if (v92)
  {
    v98 = v97 | 0x2000000;
  }

  else
  {
    v98 = v97;
  }

  if (v93)
  {
    v99 = 0x20000000;
  }

  else
  {
    v99 = 0;
  }

  if (v94)
  {
    v100 = 2;
  }

  else
  {
    v100 = 0;
  }

  if (v95)
  {
    v101 = 4;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = 8;
  }

  else
  {
    v102 = 0;
  }

  v103 = sub_1000E012C(device, 0x40u);
  v105 = v98 & 0xFFFFFFFFCF7FFFF1 | v99 | v100 | v101 | v102;
  if (!v103 || (v106 = sub_10000C798(v103, v104), !(*(*v106 + 840))(v106, 1)))
  {
    v259 = 0;
LABEL_209:
    v110 = v105 & 0xFFFFFFFFBFFFFFFFLL;
    goto LABEL_210;
  }

  v259 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100805868();
  }

  sub_10056C0AC(off_100B508E8, device, &v259);
  v107 = v259 == 1;
  if (qword_100B50940 != -1)
  {
    sub_100805890();
  }

  v108 = sub_100639958(off_100B50938, device);
  v109 = v105 | (v107 << 28);
  if (!v108)
  {
    v105 = v109 | 0x800000;
    goto LABEL_209;
  }

  v110 = v109 | 0x40800000;
LABEL_210:
  if (sub_1000E2140(device, 0x20u) && sub_1000E5DB8(device) == 1)
  {
    v111 = v110 | 0x10;
  }

  else
  {
    v111 = v110 & 0xFFFFFFFFFFFFFFEFLL;
  }

  v112 = sub_1000E2140(device, 0x11u);
  v113 = sub_1000E2140(device, 0x21u);
  v114 = sub_1000E2B78(device);
  if (qword_100B508C0 != -1)
  {
    sub_1008058B8();
  }

  v115 = sub_10004EE74(off_100B508B8, dCopy);
  v116 = sub_1000295DC(device);
  sub_1000B006C(v246, dCopy, __p);
  v117 = 0x8000000;
  if (!v112)
  {
    v117 = 0;
  }

  v118 = 32;
  if (!v113)
  {
    v118 = 0;
  }

  v119 = v117 | v118;
  v120 = 64;
  if (!v114)
  {
    v120 = 0;
  }

  v121 = v119 | v120;
  v122 = 0x2000;
  if (!v115)
  {
    v122 = 0;
  }

  v123 = v121 | v122 | v111 & 0xFFFFFFFFF7EB1F9FLL;
  if (v116)
  {
    v124 = 0x4000;
  }

  else
  {
    v124 = 0;
  }

  if (SHIBYTE(v261) < 0)
  {
    v125 = __p[1] == 0;
    operator delete(__p[0]);
  }

  else
  {
    v125 = SHIBYTE(v261) == 0;
  }

  v126 = 0x8000;
  if (v125)
  {
    v126 = 0;
  }

  v127 = 0x40000;
  if (!*(device + 1499))
  {
    v127 = 0;
  }

  v128 = v126 | v127;
  v129 = 0x100000;
  if (!*(device + 1360))
  {
    v129 = 0;
  }

  v130 = v123 | v124 | v128 | v129;
  if (v248)
  {
    v131 = sub_10054F768(device);
    v132 = 0x200000;
    if (!v131)
    {
      v132 = 0;
    }

    v133 = v132 | v130 & 0xFFFFFFFFFFDFFFFFLL;
    if (*(device + 1500))
    {
      v134 = v133 | 0x400000;
      goto LABEL_243;
    }
  }

  else
  {
    v133 = v130 & 0xFFFFFFFFFFDFFFFFLL;
  }

  v134 = v133 & 0xFFFFFFFFFFBFFFFFLL;
LABEL_243:
  v135 = sub_1000E2BC0(device);
  if ((v125 | v116))
  {
    v136 = v134 & 0xFFFFFBFF7FFFEFFFLL | ((v135 == 1) << 31) | 0x40000000000;
  }

  else
  {
    v136 = v134 & 0xFFFFFBFF7FFFFFFFLL | ((v135 == 1) << 31) | 0x40000001000;
  }

  if (sub_1000E2C08(device))
  {
    v137 = sub_10054E104(device);
    v138 = 0x20000;
    if (!v137)
    {
      v138 = 0;
    }

    v139 = 0x10000;
    if (v137)
    {
      v139 = 0;
    }

    v136 = v138 | v139 | v136 & 0xFFFFFFFFFFFCFFFFLL;
  }

  v140 = sub_1000E2C2C(device);
  v141 = sub_1000E2E8C(device);
  v142 = 0x80000;
  if (!v140)
  {
    v142 = 0;
  }

  v143 = 0x10000000000;
  if (!v141)
  {
    v143 = 0;
  }

  v144 = v142 | v143 | v136 & 0xFFFFFEFFFFF7FFFFLL;
  if (v242)
  {
    v145 = v144 & 0xFFFFFF7FFFFFFFFFLL | ((v242 == 1) << 39);
  }

  else
  {
    v145 = v144;
  }

  if (v145 != deviceFlags)
  {
    [(CBDevice *)self setDeviceFlags:?];
    v22 |= 0x80000000000uLL;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100805840();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    LOBYTE(v255) = 0;
    LOWORD(__p[0]) = 0;
    LOWORD(v256) = 0;
    sub_1000E2FE4(device, __p, &v255, &v256);
    if (v255)
    {
      if (v255 > 0xEu)
      {
        v146 = "?";
      }

      else
      {
        v146 = off_100AE0778[v255 - 1];
      }

      v146 = [NSString stringWithFormat:@"%s", v146];
      btVersion = [(CBDevice *)self btVersion];
      v149 = v146;
      v150 = btVersion;
      v151 = v150;
      if (v149 == v150)
      {
      }

      else
      {
        if ((v149 != 0) != (v150 == 0))
        {
          v152 = [v149 isEqual:v150];

          if (v152)
          {
            goto LABEL_276;
          }
        }

        else
        {
        }

        [(CBDevice *)self setBtVersion:v149];
        v22 |= 0x80000000000uLL;
      }

LABEL_276:
    }
  }

  v153 = sub_1000C2398(device);
  if (![(CBDevice *)self colorInfo]&& [(CBDevice *)self colorInfo]!= v153)
  {
    [(CBDevice *)self setColorInfo:v153];
    v22 |= 0x80000000000uLL;
  }

  v154 = sub_1000DEB14(device);
  if ([(CBDevice *)self deviceType]!= v154)
  {
    [(CBDevice *)self setDeviceType:v154];
    v22 |= 0x80000000000uLL;
  }

  if (![(CBDevice *)self appearanceValue]&& ([(CBDevice *)self deviceType]== 20 || [(CBDevice *)self deviceType]== 16))
  {
    v169 = sub_1000E30FC(v246, dCopy);
    if (v169)
    {
      if ([(CBDevice *)self appearanceValue]!= v169)
      {
        [(CBDevice *)self setAppearanceValue:v169];
        v22 |= 0x80000000000uLL;
      }
    }
  }

  v155 = sub_1000E3188(device);
  if (HIBYTE(v155) < 5u)
  {
    v156 = HIBYTE(v155) + 1;
  }

  else
  {
    v156 = 0;
  }

  if (v156 != [(CBDevice *)self doubleTapActionLeft])
  {
    [(CBDevice *)self setDoubleTapActionLeft:?];
    v22 |= 0x80000000000uLL;
  }

  if (v155 < 5u)
  {
    v157 = v155 + 1;
  }

  else
  {
    v157 = 0;
  }

  if (v157 != [(CBDevice *)self doubleTapActionRight])
  {
    [(CBDevice *)self setDoubleTapActionRight:?];
    v22 |= 0x80000000000uLL;
  }

  doubleTapCapability = [(CBDevice *)self doubleTapCapability];
  if (sub_1000DFB74(device, 0x80000u) == 4)
  {
    v159 = sub_1000E2140(device, 0xEu) ? 2 : 1;
    if (v159 != doubleTapCapability)
    {
      [(CBDevice *)self setDoubleTapCapability:v159];
      v22 |= 0x80000000000uLL;
    }
  }

  v160 = sub_1000E31D0(device);
  if (v160 != [(CBDevice *)self gapaFlags])
  {
    [(CBDevice *)self setGapaFlags:v160];
    v22 |= 0x80000000000uLL;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3) < 0xB)
  {
    if (!v247)
    {
      goto LABEL_322;
    }

    v164 = NSPrintF_safe("%u.%u.%u", BYTE1(v269), v269 >> 4, v269 & 0xF);
    firmwareVersion = [(CBDevice *)self firmwareVersion];

    if (v164 != firmwareVersion)
    {
LABEL_320:
      [(CBDevice *)self setFirmwareVersion:v164];
      v22 |= 0x80000000000uLL;
    }
  }

  else
  {
    v161 = v271 + 240;
    if (v271[263] < 0)
    {
      v161 = *v161;
    }

    v162 = [NSString stringWithUTF8String:v161];
    if ([v162 length])
    {
      firmwareVersion2 = [(CBDevice *)self firmwareVersion];
      v164 = v162;
      v165 = firmwareVersion2;
      v166 = v165;
      if (v164 != v165)
      {
        if ((v164 != 0) == (v165 == 0))
        {
        }

        else
        {
          v167 = [v164 isEqual:v165];

          if (v167)
          {
            goto LABEL_321;
          }
        }

        goto LABEL_320;
      }
    }

    else
    {
      v164 = v162;
    }
  }

LABEL_321:

LABEL_322:
  if (*(device + 1437))
  {
    v170 = 2;
  }

  else
  {
    v170 = 1;
  }

  if ([(CBDevice *)self frequencyBand]!= v170)
  {
    [(CBDevice *)self setFrequencyBand:v170];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xC0u) == 2)
  {
    v171 = 1;
  }

  else
  {
    v171 = 2;
  }

  if (v171 != [(CBDevice *)self hearingAidSupport])
  {
    [(CBDevice *)self setHearingAidSupport:v171];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xD0u) == 2)
  {
    v172 = 1;
  }

  else
  {
    v172 = 2;
  }

  if (v172 != [(CBDevice *)self hearingTestSupport])
  {
    [(CBDevice *)self setHearingTestSupport:v172];
    v22 |= 0x80000000000uLL;
  }

  v173 = sub_1000E3284(device);
  if (v173 != [(CBDevice *)self listeningMode])
  {
    [(CBDevice *)self setListeningMode:v173];
    v22 |= 0x80000000000uLL;
  }

  v174 = sub_1000E32CC(device);
  if (v174 != [(CBDevice *)self listeningModeConfigs])
  {
    [(CBDevice *)self setListeningModeConfigs:v174];
    v22 |= 0x80000000000uLL;
  }

  v175 = sub_1000E3314(device);
  if (v175 >= 3)
  {
    v176 = 0;
  }

  else
  {
    v176 = 0x20301u >> (8 * v175);
  }

  if ((v176 & 3) != [(CBDevice *)self microphoneMode])
  {
    [(CBDevice *)self setMicrophoneMode:?];
    v22 |= 0x80000000000uLL;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3) >= 2)
  {
    v177 = v271 + 24;
    if (v271[47] < 0)
    {
      v177 = *v177;
    }

    v178 = [NSString stringWithUTF8String:v177];
    if (![v178 length])
    {
      goto LABEL_357;
    }

    modelUser = [(CBDevice *)self modelUser];
    v180 = v178;
    v181 = modelUser;
    v182 = v181;
    if (v180 == v181)
    {
    }

    else
    {
      if ((v180 != 0) == (v181 == 0))
      {
      }

      else
      {
        v183 = [v180 isEqual:v181];

        if (v183)
        {
          goto LABEL_357;
        }
      }

      [(CBDevice *)self setModelUser:v180];
      v22 |= 0x80000000000uLL;
    }

LABEL_357:
  }

  sub_1000C23E0(device, __p);
  if (v261 >= 0)
  {
    v184 = __p;
  }

  else
  {
    v184 = __p[0];
  }

  v185 = [NSString stringWithUTF8String:v184];
  if (SHIBYTE(v261) < 0)
  {
    operator delete(__p[0]);
  }

  if ([v185 length])
  {
    name = [(CBDevice *)self name];
    v187 = v185;
    v188 = name;
    v189 = v188;
    if (v187 == v188)
    {

      goto LABEL_371;
    }

    if ((v187 != 0) == (v188 == 0))
    {
    }

    else
    {
      v190 = [v187 isEqual:v188];

      if (v190)
      {
        goto LABEL_371;
      }
    }

    [(CBDevice *)self setName:v187];
    v22 |= 0x80000000000uLL;
  }

LABEL_371:
  if ([v185 length])
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080573C();
    }

    v191 = off_100B508C8;
    sub_1000C23E0(device, v257);
    sub_1000E335C(v191, dCopy, v257);
    if (v258 < 0)
    {
      operator delete(v257[0]);
    }
  }

  primaryPlacement = [(CBDevice *)self primaryPlacement];
  secondaryPlacement = [(CBDevice *)self secondaryPlacement];
  primaryBudSide = [(CBDevice *)self primaryBudSide];
  if (sub_1000DFB74(device, 0x80000u) != 4)
  {
    v196 = 0;
    v197 = 0;
    v198 = 3;
    goto LABEL_394;
  }

  v195 = sub_1000E356C(device);
  LODWORD(__p[0]) = 3;
  v255 = 3;
  v256 = 3;
  if (v248)
  {
    if (qword_100B50950 != -1)
    {
      sub_1008057C8();
    }

    sub_10033C1E4(off_100B50948, device, __p, &v256);
    if (qword_100B50950 != -1)
    {
      sub_1008057C8();
    }

    sub_10033C47C(off_100B50948, device, &v255);
  }

  if (v195)
  {
    if (LODWORD(__p[0]) > 0xC)
    {
      v196 = 0;
    }

    else
    {
      v196 = dword_1008A2360[LODWORD(__p[0])];
    }

    if (v256 > 9)
    {
      switch(v256)
      {
        case 10:
          v197 = 4;
          goto LABEL_388;
        case 11:
          v197 = 5;
          goto LABEL_388;
        case 12:
          v197 = 6;
          goto LABEL_388;
      }
    }

    else
    {
      switch(v256)
      {
        case 0:
          v197 = 1;
          goto LABEL_388;
        case 1:
          v197 = 2;
          goto LABEL_388;
        case 2:
          v197 = 3;
          goto LABEL_388;
      }
    }

    v197 = 0;
    goto LABEL_388;
  }

  v196 = 7;
  v197 = 7;
LABEL_388:
  if (v255 == 2)
  {
    v199 = 2;
  }

  else
  {
    v199 = 3;
  }

  if (v255 == 1)
  {
    v198 = 1;
  }

  else
  {
    v198 = v199;
  }

LABEL_394:
  if (v196 != primaryPlacement)
  {
    [(CBDevice *)self setPrimaryPlacement:?];
    v22 |= 0x80000000000uLL;
  }

  if (v197 != secondaryPlacement)
  {
    [(CBDevice *)self setSecondaryPlacement:v197];
    v22 |= 0x80000000000uLL;
  }

  if (primaryBudSide != v198)
  {
    [(CBDevice *)self setPrimaryBudSide:v198];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E356C(device))
  {
    v200 = 1;
  }

  else
  {
    v200 = 2;
  }

  if (v200 != [(CBDevice *)self placementMode])
  {
    [(CBDevice *)self setPlacementMode:v200];
    v22 |= 0x80000000000uLL;
  }

  v201 = sub_1000E35B4(device);
  if (v201 != [(CBDevice *)self selectiveSpeechListeningConfig])
  {
    [(CBDevice *)self setSelectiveSpeechListeningConfig:v201];
    v22 |= 0x80000000000uLL;
  }

  v202 = sub_1000E3218(device, 6u);
  v203 = v202;
  v205 = sub_10000C7D0(v202, v204);
  v206 = sub_1000E01B4(v205, 4);
  if (v203 > 2)
  {
    v207 = v206;
  }

  else
  {
    v207 = 0;
  }

  if (v207 && [(CBDevice *)self selectiveSpeechListeningCapability]!= 1)
  {
    [(CBDevice *)self setSelectiveSpeechListeningCapability:v207];
    v22 |= 0x80000000000uLL;
  }

  if ([v251 length])
  {
    serialNumber = [(CBDevice *)self serialNumber];
    v209 = v251;
    v210 = serialNumber;
    v211 = v210;
    if (v209 == v210)
    {

      goto LABEL_421;
    }

    if ((v209 != 0) == (v210 == 0))
    {
    }

    else
    {
      v212 = [v209 isEqual:v210];

      if (v212)
      {
        goto LABEL_421;
      }
    }

    [(CBDevice *)self setSerialNumber:v209];
    v22 |= 0x80000000000uLL;
  }

LABEL_421:
  if (![v253 length])
  {
    goto LABEL_429;
  }

  serialNumberLeft = [(CBDevice *)self serialNumberLeft];
  v214 = v253;
  v215 = serialNumberLeft;
  v216 = v215;
  if (v214 == v215)
  {

    goto LABEL_429;
  }

  if ((v214 != 0) == (v215 == 0))
  {

    goto LABEL_428;
  }

  v217 = [v214 isEqual:v215];

  if ((v217 & 1) == 0)
  {
LABEL_428:
    [(CBDevice *)self setSerialNumberLeft:v214];
    v22 |= 0x80000000000uLL;
  }

LABEL_429:
  if (![v252 length])
  {
    goto LABEL_437;
  }

  serialNumberRight = [(CBDevice *)self serialNumberRight];
  v219 = v252;
  v220 = serialNumberRight;
  v221 = v220;
  if (v219 == v220)
  {

    goto LABEL_437;
  }

  if ((v219 != 0) == (v220 == 0))
  {

    goto LABEL_436;
  }

  v222 = [v219 isEqual:v220];

  if ((v222 & 1) == 0)
  {
LABEL_436:
    [(CBDevice *)self setSerialNumberRight:v219];
    v22 |= 0x80000000000uLL;
  }

LABEL_437:
  v223 = sub_1000E5DB8(device);
  if (v223 == 1)
  {
    v224 = 1;
  }

  else
  {
    v224 = 2 * (v223 == 2);
  }

  if (v224 != [(CBDevice *)self smartRoutingMode])
  {
    [(CBDevice *)self setSmartRoutingMode:v224];
    v22 |= 0x80000000000uLL;
  }

  v225 = sub_1000E35FC(device);
  if (v225 && v225 != [(CBDevice *)self interval])
  {
    [(CBDevice *)self setInterval:v225];
    v22 |= 0x80000000000uLL;
  }

  LODWORD(__p[0]) = 0;
  LOBYTE(v256) = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100805868();
  }

  sub_1000E6A78(off_100B508E8, device, @"global", __p, &v256);
  v226 = __p[0];
  if (v226 != [(CBDevice *)self spatialAudioMode])
  {
    [(CBDevice *)self setSpatialAudioMode:LODWORD(__p[0])];
    v22 |= 0x80000000000uLL;
  }

  if (v250 != [(CBDevice *)self supportedServices])
  {
    [(CBDevice *)self setSupportedServices:v250];
    v22 |= 0x80000200000uLL;
  }

  if ((([(CBDevice *)self productID]== 0) & v247) == 1 && HIDWORD(v269))
  {
    [(CBDevice *)self setProductID:?];
    v22 |= 0x80000000000uLL;
  }

  if ((([(CBDevice *)self vendorID]== 0) & v247) == 1 && v270)
  {
    [(CBDevice *)self setVendorID:v270];
    v22 |= 0x80000000000uLL;
  }

  if ((([(CBDevice *)self vendorIDSource]== 0) & v247) == 1 && HIDWORD(v270))
  {
    [(CBDevice *)self setVendorIDSource:BYTE4(v270)];
    v22 |= 0x80000000000uLL;
  }

  if ([(CBDevice *)self vendorIDSource]== 1 && [(CBDevice *)self vendorID]== 76)
  {
    v227 = 1;
  }

  else
  {
    v227 = [(CBDevice *)self vendorIDSource]== 2 && [(CBDevice *)self vendorID]== 1452;
  }

  productID = [(CBDevice *)self productID];
  if (!productID)
  {
    productID = [(CBDevice *)self proximityPairingProductID];
  }

  if (productID != 0 && v227)
  {
    v229 = [CBProductInfo productInfoWithProductID:productID];
    productName = [v229 productName];

    if (productName)
    {
      productName2 = [(CBDevice *)self productName];
      v232 = productName;
      v233 = v232;
      if (productName2 == v232)
      {
      }

      else
      {
        if (productName2)
        {
          v234 = [productName2 isEqual:v232];

          if (v234)
          {
            goto LABEL_487;
          }
        }

        else
        {
        }

        [(CBDevice *)self setProductName:v233];
        v22 |= 0x80000000000uLL;
      }
    }

LABEL_487:
  }

  [(CBDevice *)self deviceType];
  v235 = CBDeviceTypeToNSLocalizedString();
  if (v227)
  {
    name2 = [(CBDevice *)self name];
    if (!name2 || (-[CBDevice name](self, "name"), v237 = objc_claimAutoreleasedReturnValue(), v238 = [v237 isEqualToString:v235], v237, name2, (v238 & 1) != 0))
    {
      v239 = sub_100106320(productID);
      if (v239)
      {
        [(CBDevice *)self setName:v239];
        v22 |= 0x80000000000uLL;
      }
    }
  }

  name3 = [(CBDevice *)self name];

  if (!name3)
  {
    [(CBDevice *)self setName:v235];
    v22 |= 0x80000000000uLL;
  }

  if (SHIBYTE(v265) < 0)
  {
    operator delete(v264[0]);
  }

  *&v262 = &v271;
  sub_1000161FC(&v262);

  return v22;
}

@end