@interface ASDAudioDeviceDSPDatabase
- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path deviceUID:(id)d;
- (id)dspConfigurationForDevice:(id)device;
@end

@implementation ASDAudioDeviceDSPDatabase

- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path deviceUID:(id)d
{
  v90 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  dCopy = d;
  v84.receiver = self;
  v84.super_class = ASDAudioDeviceDSPDatabase;
  v11 = [(ASDAudioDeviceDSPDatabase *)&v84 init];
  if (v11)
  {
    p_isa = &v11->super.isa;
    v60 = dCopy;
    objc_storeStrong(&v11->_deviceUID, d);
    obj = [MEMORY[0x277CBEB58] set];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v13 = dictionaryCopy;
    v14 = [v13 countByEnumeratingWithState:&v80 objects:v89 count:16];
    v61 = p_isa;
    if (v14)
    {
      v15 = v14;
      v16 = *v81;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v81 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v80 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v20 = [[ASDAudioDeviceDSPConfiguration alloc] initWithDictionary:v19 resourcePath:pathCopy name:v18]) == 0)
          {

            v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v49)
            {
              [(ASDAudioDeviceDSPDatabase *)v49 initWithDictionary:v50 resourcePath:v51 deviceUID:v52, v53, v54, v55, v56];
            }

            v22 = v61;
            v47 = 0;
            goto LABEL_43;
          }

          v21 = v20;
          [obj addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v80 objects:v89 count:16];
        p_isa = &v61->super.isa;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v58 = pathCopy;
    v59 = dictionaryCopy;

    objc_storeStrong(p_isa + 2, obj);
    v22 = [MEMORY[0x277CBEB58] set];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    dspConfigurations = [p_isa dspConfigurations];
    v24 = [dspConfigurations countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v77;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v77 != v26)
          {
            objc_enumerationMutation(dspConfigurations);
          }

          v28 = *(*(&v76 + 1) + 8 * j);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          underlyingDeviceProperties = [v28 underlyingDeviceProperties];
          v30 = [underlyingDeviceProperties countByEnumeratingWithState:&v72 objects:v87 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v73;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v73 != v32)
                {
                  objc_enumerationMutation(underlyingDeviceProperties);
                }

                address = [*(*(&v72 + 1) + 8 * k) address];
                [v22 addObject:address];
              }

              v31 = [underlyingDeviceProperties countByEnumeratingWithState:&v72 objects:v87 count:16];
            }

            while (v31);
          }
        }

        v25 = [dspConfigurations countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v25);
    }

    objc_storeStrong(&v61->_referencedUnderlyingDeviceProperties, v22);
    v35 = [MEMORY[0x277CBEB58] set];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    dspConfigurations2 = [(ASDAudioDeviceDSPDatabase *)v61 dspConfigurations];
    v36 = [dspConfigurations2 countByEnumeratingWithState:&v68 objects:v86 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v69;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v69 != v38)
          {
            objc_enumerationMutation(dspConfigurations2);
          }

          v40 = *(*(&v68 + 1) + 8 * m);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          dspDeviceProperties = [v40 dspDeviceProperties];
          v42 = [dspDeviceProperties countByEnumeratingWithState:&v64 objects:v85 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v65;
            do
            {
              for (n = 0; n != v43; ++n)
              {
                if (*v65 != v44)
                {
                  objc_enumerationMutation(dspDeviceProperties);
                }

                address2 = [*(*(&v64 + 1) + 8 * n) address];
                [(NSSet *)v35 addObject:address2];
              }

              v43 = [dspDeviceProperties countByEnumeratingWithState:&v64 objects:v85 count:16];
            }

            while (v43);
          }
        }

        v37 = [dspConfigurations2 countByEnumeratingWithState:&v68 objects:v86 count:16];
      }

      while (v37);
    }

    v47 = v61;
    referencedDSPDeviceProperties = v61->_referencedDSPDeviceProperties;
    v61->_referencedDSPDeviceProperties = v35;

    pathCopy = v58;
    dictionaryCopy = v59;
LABEL_43:
    dCopy = v60;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)dspConfigurationForDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(ASDAudioDeviceDSPDatabase *)self dspConfigurations];
  v29 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v29)
  {
    v28 = *v39;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v39 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v38 + 1) + 8 * v5);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      underlyingDeviceProperties = [v6 underlyingDeviceProperties];
      v8 = [underlyingDeviceProperties countByEnumeratingWithState:&v34 objects:v43 count:16];
      v9 = v6;
      if (v8)
      {
        v10 = v8;
        v11 = *v35;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(underlyingDeviceProperties);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            address = [v13 address];
            v15 = [deviceCopy getProperty:address];

            value = [v13 value];
            LOBYTE(address) = [v15 isEqual:value];

            if ((address & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [underlyingDeviceProperties countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v9 = v6;
      }

LABEL_16:

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      dspDeviceProperties = [v6 dspDeviceProperties];
      v18 = [dspDeviceProperties countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(dspDeviceProperties);
            }

            v22 = *(*(&v30 + 1) + 8 * j);
            address2 = [v22 address];
            v24 = [deviceCopy getProperty:address2];

            value2 = [v22 value];
            LOBYTE(address2) = [v24 isEqual:value2];

            if ((address2 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v19 = [dspDeviceProperties countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      if (v9)
      {
        break;
      }

LABEL_27:
      if (++v5 == v29)
      {
        v29 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v9 = 0;
  }

  return v9;
}

@end